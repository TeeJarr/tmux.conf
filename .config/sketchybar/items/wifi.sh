sketchybar --add item wifi right 										\
						--set wifi script="$PLUGIN_DIR/wifi.sh" \
						--subscribe wifi wifi_change						\
							mouse.entered.script="$HOME/.config/sketchybar/plugins/wifi_mouse_enter.sh" \
             	mouse.exited.script="$HOME/.config/sketchybar/plugins/wifi_mouse_exit.sh" \
