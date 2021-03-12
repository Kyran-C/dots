#!/bin/python3

from i3ipc import Connection, Event
from i3_helper_common import State
import Pyro4
import Pyro4.util
import threading
import sys
import subprocess

sys.excepthook = Pyro4.util.excepthook


state = Pyro4.Proxy("PYRONAME:i3.state")

def on_window_focus( i3, e ):
    global state
    state.on_window_focus()

def on_workspace_focus( i3, e ):
    global state
    state.on_workspace_focus()

if __name__=="__main__":
    arguments = len(sys.argv) - 1
    if arguments == 0:
        i3 = Connection()
        i3.on( Event.WINDOW_FOCUS, on_window_focus )
        i3.on( Event.WORKSPACE, on_window_focus )
        i3.main()
