; vim: filetype=dosini

;-------------------------------------------------
;                                                ;
;     Polybar configuration                      ;
;       Andreas Schmid <ikeark@gmail.com         ;
;                                                ;
;-------------------------------------------------

[colors]
my_background   = #1D1F21
my_foreground   = #C5C8C6

my_color0 = #282A2E
my_color1 = #A54242
my_color2 = #8C9440
my_color3 = #DE935F
my_color4 = #5F819D
my_color5 = #85678F
my_color6 = #5E8D87
my_color7 = #707880
my_color8 = #373B41
my_color9 = #CC6666
my_color10  = #707880
my_color11  = #F0C674
my_color12  = #81A2BE
my_color13  = #B294BB
my_color14  = #8ABEB7
my_color15  = #C5C8C6

[bar/top]
inherit = bar/standard
bottom = false

modules-left = xwindow
modules-center =
modules-right = battery

tray-position = right
tray-padding = 9
tray-offset-y = 0%
tray-offset-x = 0%
tray-maxsize = 18
tray-detached = false
tray-background = ${colors.my_background}


[bar/standard]
monitor = ${env:MONITOR:eDP1}
bottom = true
width = 100%
height = 40
offset-x = 0%
offset-y = 0%
radius = 0.0
fixed-center = true

background = ${colors.my_background}
foreground =  ${colors.my_foreground}

line-size = 4
line-color = ${colors.my_color4}

border-size = 0
border-color = ${colors.my_color4}

padding-left = 0
padding-right = 1

module-margin-left = 1
module-margin-right = 1

font-0 = Hack:fontformat=truetype:size=16;3
font-1 = FontAwesome:fontformat=truetype:size=16;3

modules-left = i3
modules-center = filesystem mem cpu
modules-right = volume lan wifi date

[module/i3]
type = internal/i3
pin-workspaces = true

label-unfocused-background = ${colors.my_background}
label-unfocused-foreground = ${colors.my_foreground}


label-mode = %mode%
label-mode-padding = 1
label-mode-background = ${colors.my_color7}

label-focused = %icon%%name%
label-focused-foreground = ${colors.my_foreground}
label-focused-background = ${colors.my_background}
label-focused-underline = ${colors.my_color7}
label-focused-padding = 1

label-unfocused = %icon%%name%
label-unfocused-padding = 1

label-visible = %icon%%name%
label-visible-underline = ${colors.my_foreground}
label-visible-padding = 1

label-urgent = %index%
label-urgent-foreground = ${colors.my_foreground}
label-urgent-background = ${colors.my_background}
label-urgent-underline = ${colors.my_color7}
label-urgent-padding = 1


[module/date]
type = internal/date
interval = 5

date = "%Y-%m-%d"
date-alt =

time = %H:%M
time-alt =

format-prefix-foreground = ${colors.my_foreground}
;format-underline = ${colors.my_color7}
label =  %date% %time%


[module/battery]
type = internal/battery

; Use the following command to list batteries and adapters:
; $ ls -1 /sys/class/power_supply/
battery = BAT0
adapter = ADP1

full-at = 99

format-charging = " <animation-charging> <label-charging> "

format-discharging-background = ${colors.my_background}
format-discharging = "⁣ <ramp-capacity> <label-discharging> "

format-full-prefix-foreground = ${colors.my_background}
label-full =  full

format-charing-background = ${colors.my_background}

ramp-capacity-0 = 
ramp-capacity-1 = 
ramp-capacity-2 = 
ramp-capacity-3 = 
ramp-capacity-4 = 
ramp-capacity-foreground = ${colors.my_foreground}

animation-charging-0 = 
animation-charging-1 = 
animation-charging-2 = 
animation-charging-3 = 
animation-charging-4 = 
animation-charging-foreground = ${colors.my_foreground}
animation-charging-framerate = 750

[settings]
screenchange-reload = true

[module/lan]
type = internal/network
interface = eth0
format-connected = <label-connected>
format-disconnected = <label-disconnected>
label-connected = " (%local_ip%)"
label-connected-foreground = #0F0
label-disconnected = not connected
label-disconnected-foreground = #66ffffff

[module/wifi]
type = internal/network
interface = wlp58s0

; Available tags:
;   <label-connected> (default)
;   <ramp-signal>
format-connected = <label-connected>

; Available tags:
;   <label-disconnected> (default)
format-disconnected = <label-disconnected>

; Available tags:
;   <label-connected> (default)
;   <label-packetloss>
;   <animation-packetloss>
format-packetloss = <animation-packetloss> <label-connected>

; Available tokens:
;   %ifname%    [wireless+wired]
;   %local_ip%  [wireless+wired]
;   %essid%     [wireless]
;   %signal%    [wireless]
;   %upspeed%   [wireless+wired]
;   %downspeed% [wireless+wired]
;   %linkspeed% [wired]
; Default: %ifname% %local_ip%
label-connected = " %essid% (%local_ip%)"
label-connected-foreground = #0F0

; Available tokens:
;   %ifname%    [wireless+wired]
; Default: (none)
label-disconnected =  not connected
label-disconnected-foreground = #66ffffff

; Only applies if <ramp-signal> is used
ramp-signal-0 = 😱
ramp-signal-1 = 😠
ramp-signal-2 = 😒
ramp-signal-3 = 😊
ramp-signal-4 = 😃
ramp-signal-5 = 😈

; Only applies if <animation-packetloss> is used
animation-packetloss-0 = ⚠
animation-packetloss-0-foreground = #ffa64c
animation-packetloss-1 = 📶
animation-packetloss-1-foreground = #000000
; Framerate in milliseconds
animation-packetloss-framerate = 500

[global/wm]
margin-top = 5
margin-bottom = 5

[module/xwindow]
type = internal/xwindow
label = %title:0:120:...%
label-padding = 2
;label-underline = ${colors.my_color7}
label-foreground = ${colors.my_color7}

[module/cpu]
type = internal/cpu
format = <label> <ramp-coreload>

; Available tokens:
;   %percentage% (default) - total cpu load
;   %percentage-cores% - load percentage for each core
;   %percentage-core[1-9]% - load percentage for specific core
label = CPU %percentage%%
ramp-coreload-0 = ▁
ramp-coreload-1 = ▂
ramp-coreload-2 = ▃
ramp-coreload-3 = ▄
ramp-coreload-4 = ▅
ramp-coreload-5 = ▆
ramp-coreload-6 = ▇
ramp-coreload-7 = █


[module/mem]
type = internal/memory
format = <label> <bar-used>

label = RAM

; Only applies if <bar-used> is used
bar-used-indicator =
bar-used-width = 20
bar-used-foreground-0 = #55aa55
bar-used-foreground-1 = #557755
bar-used-foreground-2 = #f5a70a
bar-used-foreground-3 = #ff5555
bar-used-fill = ▐
bar-used-empty = ▐
bar-used-empty-foreground = #444444


[module/volume]
type = internal/volume

; Soundcard to be used
; Usually in the format hw:#
master-soundcard = default
speaker-soundcard = default
headphone-soundcard = default

; Name of the master mixer
; Default: Master
master-mixer = Master

; Optionally define speaker and headphone mixers
; Use the following command to list available mixer controls:
; $ amixer scontrols | sed -nr "s/.*'([[:alnum:]]+)'.*/\1/p"
; Default: none
;speaker-mixer = Speaker
; Default: none
;headphone-mixer = Headphone

; NOTE: This is required if headphone_mixer is defined
; Use the following command to list available device controls
; $ amixer controls | sed -r "/CARD/\!d; s/.*=([0-9]+).*name='([^']+)'.*/printf '%3.0f: %s\n' '\1' '\2'/e" | sort
; Default: none
;headphone-id = 9

; Use volume mapping (similar to amixer -M and alsamixer), where the increase in volume is linear to the ear
; Default: false
;mapped = true

; Available tags:
;   <label-volume> (default)
;   <ramp-volume>
;   <bar-volume>
format-volume = <ramp-volume> <label-volume>

; Available tags:
;   <label-muted> (default)
;   <ramp-volume>
;   <bar-volume>
;format-muted = <label-muted>

; Available tokens:
;   %percentage% (default)
;label-volume = %percentage%%

; Available tokens:
;   %percentage% (default)
label-muted =  
label-muted-foreground = #66

; Only applies if <ramp-volume> is used
ramp-volume-0 = 
ramp-volume-1 = 
ramp-volume-2 = 

; If defined, it will replace <ramp-volume> when
; headphones are plugged in to `headphone_control_numid`
; If undefined, <ramp-volume> will be used for both
; Only applies if <ramp-volume> is used
ramp-headphones-0 = 
ramp-headphones-1 = 


[module/filesystem]
type = internal/fs

; Mountpoints to display
mount-0 = /

; Seconds to sleep between updates
; Default: 30
interval = 10

; Display fixed precision values
; Default: false
fixed-values = true

; Spacing between entries
; Default: 2
spacing = 4

label-mounted =  %free%
