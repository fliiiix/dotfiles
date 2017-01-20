[Unit]
Description=Change keycodes at boot

[Service]
Type=oneshot
ExecStart=/usr/bin/setkeycodes e03e 255

[Install]
WantedBy=multi-user.target
