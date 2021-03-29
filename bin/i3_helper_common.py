#!/bin/python3
from i3ipc import Connection, Event
import Pyro4
import Pyro4.util
import threading
import time
import subprocess

def do_nothing():
    pass

i3 = Connection()
flash_pre_timer = threading.Timer(0.0, lambda : do_nothing() )

def now():
    return time.time_ns() // 1000000

super_is_down = False
super_combination_was_pressed = False
last_super_press = now()
long_press_duration = 250

@Pyro4.expose
class State(object):
    def __init__( self ):
        self.focused_window_id = -1

    def set_focused_window_id( self, id ):
        self.focused_window_id = id

    def get_focused_window_id( self ):
        return self.focused_window_id

    def print_focused( self ):
        print( "[print_focused] Focused id: %d" % self.focused_window_id )

    def print_string( self, str ):
        print( str )

    def on_window_focus( self ):
        global i3
        global flash_pre_timer
        print("state window focus")
        flash_pre_timer.cancel()
        if self.focused_window_id != -1:
            highlight_disable( self.focused_window_id )
        else:
            print( "[on_window_focus] Focused window id was -1")

        focused = i3.get_tree().find_focused()
        self.set_focused_window_id( focused.id )
        print( "[on_window_focus] state.focused_window_id == %d" % self.get_focused_window_id() )
        #highlight_temporary( self.focused_window_id )
        if super_is_down:
            super_combination_was_pressed = True


    def super_down( self ):
        global super_is_down
        global last_super_press
        print( "super_down" )
        last_super_press = now()
        super_is_down = True
        #self.momentary_highlight_enable()
        highlight_temporary()

    def super_up( self ):
        global super_is_down
        global super_combination_was_pressed
        global last_super_press
        global long_press_duration

        self.momentary_highlight_disable()

        if not super_combination_was_pressed:                   # only super was pressed
            hold_duration = now() - last_super_press
            print( "super_up. Total duration: %d" % hold_duration )

            if hold_duration < long_press_duration: # short press -> launch rofi menu
                print( "launching rofi_menu..." )
                foo = subprocess.Popen( ['/bin/sh', '-c', 'rofi_menu.sh'] )

        super_combination_was_pressed = False
        super_is_down = False
    
    #def momentary_highlight_enable( self ):
    #    global i3
    #    flash_pre_timer.cancel()
    #    if self.focused_window_id != -1:
    #        highlight_disable( self.focused_window_id )
    #    else:
    #        print( "[momentary_highlight_enable] previously focused window id was -1")
    #    id = i3.get_tree().find_focused().id
    #    self.set_focused_window_id( id )
    #    print( "[momentary_highlight_enable] highlighting id %d" % id )
    #    highlight_enable( id )

    def momentary_highlight_disable( self ):
        global flash_pre_timer
        flash_pre_timer.cancel()
        #if self.focused_window_id != -1:
        #    highlight_disable( self.focused_window_id )


def highlight_enable( id ):
    return # no longer needed
    #global i3
    #tree = i3.get_tree()
    #container = tree.find_by_id( id )
    #if container is not None:
    #    descendants = tree.descendants()
    #    for child in descendants:
    #        child.command( "border pixel 2" )
    #        #child.command( "gaps inner all set 0")
    #    tree.command("gaps inner all set 0")
    #    container.command( "border pixel 10 ")
    #    container.command( "border pixel 10" )
    #    container.command( "client.focused #FFFFFF" )

def highlight_disable( id ):
    return # no longer needed
    #global i3
    #tree = i3.get_tree()
    #container = tree.find_by_id( id )
    #if container is not None:
    #    #container.command( "border pixel 2" )
    #    descendants = tree.descendants()
    #    for child in descendants:
    #        child.command( "border pixel 0" )
    #        child.command( "gaps inner all set 2")
    #    #container.command( "client.focused #000000" )

def flash():
    subprocess.Popen( ['flash_window'] )


def flash_after_delay( delay ):
    flash_pre_timer = threading.Timer( delay, lambda : flash() )
    flash_pre_timer.start()

def highlight_temporary():
    flash_after_delay( long_press_duration / 1000 )
    
def highlight_expired( id ):
    highlight_disable( id )


def main():
    print( "Starting Pyro daemon..." )
    subprocess.Popen( ["python", "-m", "Pyro4.naming"] )
    state = State()
    daemon = Pyro4.Daemon()
    ns = Pyro4.locateNS()
    uri = daemon.register( state )
    print( uri )
    ns.register("i3.state", uri)
    daemon.requestLoop()

if __name__=="__main__":
    main()
