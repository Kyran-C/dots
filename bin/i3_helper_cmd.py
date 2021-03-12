#!/bin/python3

from i3ipc import Connection, Event
import sys
import Pyro4
import Pyro4.util
from i3_helper_common import State

sys.excepthook = Pyro4.util.excepthook

def on_command_line():
    state = Pyro4.Proxy("PYRONAME:i3.state")
    #global state
    print( state )
    id = state.get_focused_window_id()
    #print( "[on_command_line] focused: %d" % id )

    #print( "on_command_line called." )
    #id = i3.get_tree().find_focused().id

    
    #state.print_string( "sys.argv[1]: %s" % sys.argv[1] )
    command = sys.argv[1]
    args = sys.argv[2:]
    if command == "super_down":
        state.super_down()
    elif command == "super_up":
        state.super_up()
    elif command == "resize":
        pass

    print( "last focused window id: %d" % id )

if __name__=="__main__":
    on_command_line()
