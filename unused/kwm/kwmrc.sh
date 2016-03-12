/*
This is a sample config for Kwm

Commands prefixed with 'kwmc' will call
local functions corresponding to the
kwmc syntax.

To run an external program or command,
use the prefix 'exec' followed by command.
e.g 'exec mvim' would open macvim

Read file and execute commands as
if they were written inside kwmrc.

include filename

e.g: bindsym-commands in a separate file called 'binds'
include binds

Create variables that can be used in the below commands.
Variables are in file-scope and must be defined before
they can be used. Re-definition is also possible.
Variable names can not contain whitespace, where as
the value can.

define variable value

e.g: create a variable for the hyper-key
define hyper cmd+ctrl+alt+shift
kwmc bindsym hyper-h window -f west
*/

define hyper cmd+ctrl+alt+shift
kwmc bindsym hyper-h window -f west

// Set default values for screen padding
kwmc config padding 10 0 0 0

// Set default values for container gaps
kwmc config gap 0 0

// Default tiling mode for Kwm (bsp | monocle | float | off)
kwmc config tiling bsp

// Let Kwm listen for hotkeys
kwmc config hotkeys on

// Automatically float windows that fail to resize
kwmc config float-non-resizable on

// Automatically resize the window to its container
kwmc config lock-to-container on

// Set focus-follows-mouse-mode to autoraise
kwmc config focus-follows-mouse autoraise

/* Focus-follows-mouse is temporarily disabled when
   a floating window has focus */
kwmc config standby-on-float on

/* The mouse will automatically move to the center
   of the focused window */
kwmc config mouse-follows-focus on

// Allow window focus to wrap-around
kwmc config cycle-focus screen

/* Override default settings for space 1 on screen 0
   kwmc config space 0 1 mode monocle
   kwmc config space 0 1 padding 100 100 100 100
   kwmc config space 0 1 gap 40 40 */

/* Override default settings for screen 1
   kwmc config display 1 mode bsp
   kwmc config display 1 padding 100 100 100 100
   kwmc config display 1 gap 40 40 */

// Set default container split-ratio
kwmc config split-ratio 0.5

// New splits become the left leaf-node
kwmc config spawn left

/* Add custom tiling rules for applications that
   does not get tiled by Kwm by default.
   This is because some applications do not have the
   AXWindowRole and AXStandardWindowSubRole */
kwmc rule owner="iTerm2" properties={role="AXDialog"}

/* The following commands create rules that
   blacklists an application from Kwms tiling

   kwmc rule owner="Steam" properties={float="true"}
   kwmc rule owner="Photoshop" properties={float="true"} */

/* The following command creates a rule that
   captures an application to the given screen,
   if the screen exists.

   kwmc rule owner="iTunes" properties={display="1"} */

// Enable border for focused window
kwmc config border focused on
kwmc config border focused size 2
kwmc config border focused color 0xFFBDD322
kwmc config border focused radius 6

// Enable border for marked window
kwmc config border marked on
kwmc config border marked size 2
kwmc config border marked color 0xFFCC5577
kwmc config border marked radius 6

// Enable the prefix mode
kwmc mode prefix prefix on
kwmc mode prefix timeout 0.75
kwmc mode prefix restore default
kwmc mode prefix color 0xFF458588

/*  Default Keybinds */
// Activate prefix mode
kwmc bindsym ctrl-s mode activate prefix

// Quit Kwm
kwmc bindsym cmd+alt+ctrl-q quit

// Launch iTerm2
kwmc bindsym cmd-return exec open -na /Applications/iTerm2.app

// Set Space Tiling Mode To BSP
kwmc bindsym hyper-a space -t bsp

// Set Space Tiling Mode To Monocle
kwmc bindsym hyper-s space -t monocle

// Set Space Tiling Mode To Floating
kwmc bindsym hyper-d space -t float

// Rotate Window-Tree By 90degrees (Clockwise)
kwmc bindsym cmd+ctrl-r tree rotate 90

// Modify Container
kwmc bindsym prefix-s window -c split-mode toggle
kwmc bindsym prefix-h window -c reduce 0.05
kwmc bindsym prefix-l window -c expand 0.05
kwmc bindsym prefix-< window -c type toggle

// Set Temporary Window Container
kwmc bindsym prefix-f window -z fullscreen
kwmc bindsym prefix-d window -z parent
kwmc bindsym prefix-w window -t focused

// Mark Window
kwmc bindsym cmd+alt+ctrl-m window -mk focused
kwmc bindsym cmd+alt+ctrl-h window -mk west wrap
kwmc bindsym cmd+alt+ctrl-l window -mk east wrap
kwmc bindsym cmd+alt+ctrl-j window -mk south wrap
kwmc bindsym cmd+alt+ctrl-k window -mk north wrap

// Give Focus To Window
kwmc bindsym cmd+alt-h window -f west
kwmc bindsym cmd+alt-l window -f east
kwmc bindsym cmd+alt-j window -f south
kwmc bindsym cmd+alt-k window -f north

kwmc bindsym cmd+alt-n window -fm prev
kwmc bindsym cmd+alt-m window -fm next

// Give Focus To Screen
kwmc bindsym cmd+alt-1 display -f 0
kwmc bindsym cmd+alt-2 display -f 1
kwmc bindsym cmd+alt-3 display -f 2

// Swap Focused Window
kwmc bindsym ctrl+alt-h window -s west
kwmc bindsym ctrl+alt-j window -s south
kwmc bindsym ctrl+alt-k window -s north
kwmc bindsym ctrl+alt-l window -s east
kwmc bindsym ctrl+alt-m window -s mark

// Pseudo containers
kwmc bindsym cmd+ctrl+alt-p tree -pseudo create
kwmc bindsym cmd+ctrl+alt-o tree -pseudo destroy
kwmc bindsym ctrl+alt-p window -s prev
kwmc bindsym ctrl+alt-n window -s next

// Detach Focused Window And Reinsert In Direction
kwmc bindsym ctrl+shift-k window -m north
kwmc bindsym ctrl+shift-l window -m east
kwmc bindsym ctrl+shift-j window -m south
kwmc bindsym ctrl+shift-h window -m west

// Detach Marked Window And Reinsert At Focused Window
kwmc bindsym ctrl+shift-x window -m mark

// Move Focused Window To Space
kwmc bindsym ctrl+alt-left window -m space left
kwmc bindsym ctrl+alt-right window -m space right

// Move Focused Window To Screen
kwmc bindsym ctrl+alt-1 window -m display 0
kwmc bindsym ctrl+alt-2 window -m display 1
kwmc bindsym ctrl+alt-3 window -m display 2

// Increase Container Gaps
kwmc bindsym prefix-x space -g increase horizontal
kwmc bindsym prefix-y space -g increase vertical

// Decrease Container Gaps
kwmc bindsym prefix+shift-x space -g decrease horizontal
kwmc bindsym prefix+shift-y space -g decrease vertical

// Increase Screen Padding
kwmc bindsym prefix-left space -p increase left
kwmc bindsym prefix-right space -p increase right
kwmc bindsym prefix-up space -p increase top
kwmc bindsym prefix-down space -p increase bottom
kwmc bindsym prefix-p space -p increase all

// Decrease Screen Padding
kwmc bindsym prefix+shift-left space -p decrease left
kwmc bindsym prefix+shift-right space -p decrease right
kwmc bindsym prefix+shift-up space -p decrease top
kwmc bindsym prefix+shift-down space -p decrease bottom
kwmc bindsym prefix+shift-p space -p decrease all

// Autowrite
kwmc bindsym cmd-7 write \
kwmc bindsym cmd-8 write {
kwmc bindsym cmd-9 write }
