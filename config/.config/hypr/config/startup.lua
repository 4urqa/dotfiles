--     _            _
--  __| |_ __ _ _ _| |_ _  _ _ __
-- (_-<  _/ _` | '_|  _| || | '_ \
-- /__/\__\__,_|_|  \__|\_,_| .__/
--                          |_|

hl.on("hyprland.start", function()
	hl.exec_cmd("hyprlock -q")
	hl.exec_cmd("waybar")
	hl.exec_cmd("swaync")
	hl.exec_cmd("awww-daemon")
	hl.exec_cmd("awww img/home/tima/Pictures/walls/abstract-grayscale-layered-wavy-shapes.jpg")
	hl.exec_cmd("wl-paste --type-text --watch cliphist store")
	hl.exec_cmd("wl-paste --type image --watch cliphist store")
	hl.exec_cmd("weather.sh")
end)
