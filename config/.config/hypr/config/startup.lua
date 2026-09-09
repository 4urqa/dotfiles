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
	hl.exec_cmd("awww img ~/images/walls/abstract-grayscale-layered-wavy-shapes.png")
	hl.exec_cmd("weather.sh")
end)
