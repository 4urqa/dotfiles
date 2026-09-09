--  _            _    _         _
-- | |_____ _  _| |__(_)_ _  __| |___
-- | / / -_) || | '_ \ | ' \/ _` (_-<
-- |_\_\___|\_, |_.__/_|_||_\__,_/__/
--          |__/

local configs = 'os.getenv("HOME")/.config/hypr/config'
SUPER = "SUPER"
-- Window --

hl.bind(SUPER .. " + " .. "Q", hl.dsp.window.close())
hl.bind(SUPER .. " + " .. "F", hl.dsp.window.fullscreen())
hl.bind(SUPER .. " + " .. "SHIFT" .. " + " .. "Space", hl.dsp.window.float())

hl.bind(SUPER .. " + " .. "h", hl.dsp.focus({ direction = "left" }))
hl.bind(SUPER .. " + " .. "l", hl.dsp.focus({ direction = "right" }))
hl.bind(SUPER .. " + " .. "k", hl.dsp.focus({ direction = "up" }))
hl.bind(SUPER .. " + " .. "j", hl.dsp.focus({ direction = "down" }))

hl.bind(SUPER .. " + " .. "SHIFT" .. " + " .. "h", hl.dsp.window.resize({ x = -50, y = 0, relative = true }))
hl.bind(SUPER .. " + " .. "SHIFT" .. " + " .. "l", hl.dsp.window.resize({ x = 50, y = 0, relative = true }))
hl.bind(SUPER .. " + " .. "SHIFT" .. " + " .. "k", hl.dsp.window.resize({ x = 0, y = -50, relative = true }))
hl.bind(SUPER .. " + " .. "SHIFT" .. " + " .. "j", hl.dsp.window.resize({ x = 0, y = 50, relative = true }))

hl.bind(SUPER .. " + " .. "mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(SUPER .. " + " .. "mouse:273", hl.dsp.window.resize(), { mouse = true })

hl.bind(SUPER .. " + " .. "CTRL" .. " + " .. "h", hl.dsp.window.move({ direction = "left" }))
hl.bind(SUPER .. " + " .. "CTRL" .. " + " .. "l", hl.dsp.window.move({ direction = "right" }))
hl.bind(SUPER .. " + " .. "CTRL" .. " + " .. "k", hl.dsp.window.move({ direction = "up" }))
hl.bind(SUPER .. " + " .. "CTRL" .. " + " .. "j", hl.dsp.window.move({ direction = "down" }))

-- Workspaces --

hl.bind(SUPER .. " + " .. "code:10", hl.dsp.focus({ workspace = 1 }))
hl.bind(SUPER .. " + " .. "code:11", hl.dsp.focus({ workspace = 2 }))
hl.bind(SUPER .. " + " .. "code:12", hl.dsp.focus({ workspace = 3 }))
hl.bind(SUPER .. " + " .. "code:13", hl.dsp.focus({ workspace = 4 }))
hl.bind(SUPER .. " + " .. "code:14", hl.dsp.focus({ workspace = 5 }))
hl.bind(SUPER .. " + " .. "code:15", hl.dsp.focus({ workspace = 6 }))
hl.bind(SUPER .. " + " .. "code:16", hl.dsp.focus({ workspace = 7 }))
hl.bind(SUPER .. " + " .. "code:17", hl.dsp.focus({ workspace = 8 }))
hl.bind(SUPER .. " + " .. "code:18", hl.dsp.focus({ workspace = 9 }))
hl.bind(SUPER .. " + " .. "code:19", hl.dsp.focus({ workspace = 10 }))

hl.bind(SUPER .. " + " .. "SHIFT" .. " + " .. 1, hl.dsp.window.move({ workspace = 1 }))
hl.bind(SUPER .. " + " .. "SHIFT" .. " + " .. 2, hl.dsp.window.move({ workspace = 2 }))
hl.bind(SUPER .. " + " .. "SHIFT" .. " + " .. 3, hl.dsp.window.move({ workspace = 3 }))
hl.bind(SUPER .. " + " .. "SHIFT" .. " + " .. 4, hl.dsp.window.move({ workspace = 4 }))
hl.bind(SUPER .. " + " .. "SHIFT" .. " + " .. 5, hl.dsp.window.move({ workspace = 5 }))
hl.bind(SUPER .. " + " .. "SHIFT" .. " + " .. 6, hl.dsp.window.move({ workspace = 6 }))
hl.bind(SUPER .. " + " .. "SHIFT" .. " + " .. 7, hl.dsp.window.move({ workspace = 7 }))
hl.bind(SUPER .. " + " .. "SHIFT" .. " + " .. 8, hl.dsp.window.move({ workspace = 8 }))
hl.bind(SUPER .. " + " .. "SHIFT" .. " + " .. 9, hl.dsp.window.move({ workspace = 9 }))

hl.bind(SUPER .. " + " .. "tab", hl.dsp.focus({ workspace = "m+1" }))
hl.bind(SUPER .. " + " .. "W", hl.dsp.focus({ workspace = "m-1" }))

-- Apps --
hl.bind(SUPER .. " + " .. "D", hl.dsp.exec_cmd("rofi -show drun"))
hl.bind(SUPER .. " + " .. "Return", hl.dsp.exec_cmd("kitty"))
hl.bind(SUPER .. " + " .. "E", hl.dsp.exec_cmd("thunar"))

--waybar
hl.bind(SUPER .. " + " .. "B", hl.dsp.exec_cmd("killall -SIGUSR1 waybar"))

--hyprland
hl.bind("CTRL + ALT + Delete", hl.dsp.exec_cmd("killall Hyprland"))

--hyprpicker
hl.bind(SUPER .. " + " .. "C", hl.dsp.exec_cmd("hyprpicker"))

--volume
hl.bind(SUPER .. " + " .. "F3", hl.dsp.exec_cmd("amixer sset Master 5%+"))
hl.bind(SUPER .. " + " .. "F2", hl.dsp.exec_cmd("amixer sset Master 5%-"))
hl.bind(SUPER .. " + " .. "F1", hl.dsp.exec_cmd("amixer sset Master toggle"))

--brigthnessctl
hl.bind(SUPER .. " + " .. "F6", hl.dsp.exec_cmd("brightnessctl set +5%"))
hl.bind(SUPER .. " + " .. "f5", hl.dsp.exec_cmd("brightnessctl set 5-%"))

--clipboard
hl.bind(SUPER .. " + " .. "V", hl.dsp.exec_cmd("cliphist list | rofi -dmenu | cliphist decode | wl-copy"))

--screenshots
hl.bind(
	SUPER .. " + " .. "Print",
	hl.dsp.exec_cmd("grim /home/tima/images/screenshots/screenshot_$(date +%Y%m%d%H%M%S).png | wl-copy")
)

hl.bind(
	SUPER .. " + " .. "CTRL" .. " + " .. "Print",
	hl.dsp.exec_cmd('grim -g "$(slurp)" /home/tima/images/screenshots/screenshot_$(date +%Y%m%d%H%M%S).png | wl-copy')
)
