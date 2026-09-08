--  _            _    _         _
-- | |_____ _  _| |__(_)_ _  __| |___
-- | / / -_) || | '_ \ | ' \/ _` (_-<
-- |_\_\___|\_, |_.__/_|_||_\__,_/__/
--          |__/

local mainMod = "SUPER"
local configs = 'os.getenv("HOME")/.config/hypr/config'

-- WINDOWS

hl.bind(mainMod .. " + " .. "Q", hl.dsp.window.close())
hl.bind(mainMod .. " + " .. "F", hl.dsp.window.fullscreen())
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "Space", hl.dsp.window.float())

hl.bind(mainMod .. " + " .. "h", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + " .. "l", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + " .. "k", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + " .. "j", hl.dsp.focus({ direction = "down" }))

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "h", hl.dsp.window.resize({ x = -50, y = 0, relative = true }))
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "l", hl.dsp.window.resize({ x = 50, y = 0, relative = true }))
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "k", hl.dsp.window.resize({ x = 0, y = -50, relative = true }))
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "j", hl.dsp.window.resize({ x = 0, y = 50, relative = true }))

hl.bind(mainMod .. " + " .. "mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + " .. "mouse:273", hl.dsp.window.resize(), { mouse = true })

hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. "h", hl.dsp.window.move({ direction = "left" }))
hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. "l", hl.dsp.window.move({ direction = "right" }))
hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. "k", hl.dsp.window.move({ direction = "up" }))
hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. "j", hl.dsp.window.move({ direction = "down" }))

-- WORKSPACES

hl.bind(mainMod .. " + " .. "code:10", hl.dsp.focus({ workspace = 1 }))
hl.bind(mainMod .. " + " .. "code:11", hl.dsp.focus({ workspace = 2 }))
hl.bind(mainMod .. " + " .. "code:12", hl.dsp.focus({ workspace = 3 }))
hl.bind(mainMod .. " + " .. "code:13", hl.dsp.focus({ workspace = 4 }))
hl.bind(mainMod .. " + " .. "code:14", hl.dsp.focus({ workspace = 5 }))
hl.bind(mainMod .. " + " .. "code:15", hl.dsp.focus({ workspace = 6 }))
hl.bind(mainMod .. " + " .. "code:16", hl.dsp.focus({ workspace = 7 }))
hl.bind(mainMod .. " + " .. "code:17", hl.dsp.focus({ workspace = 8 }))
hl.bind(mainMod .. " + " .. "code:18", hl.dsp.focus({ workspace = 9 }))
hl.bind(mainMod .. " + " .. "code:19", hl.dsp.focus({ workspace = 10 }))

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 1, hl.dsp.window.move({ workspace = 1 }))
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 2, hl.dsp.window.move({ workspace = 2 }))
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 3, hl.dsp.window.move({ workspace = 3 }))
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 4, hl.dsp.window.move({ workspace = 4 }))
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 5, hl.dsp.window.move({ workspace = 5 }))
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 6, hl.dsp.window.move({ workspace = 6 }))
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 7, hl.dsp.window.move({ workspace = 7 }))
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 8, hl.dsp.window.move({ workspace = 8 }))
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 9, hl.dsp.window.move({ workspace = 9 }))

hl.bind(mainMod .. " + " .. "tab", hl.dsp.focus({ workspace = "m+1" }))
hl.bind(mainMod .. " + " .. "W", hl.dsp.focus({ workspace = "m-1" }))

-- APPS & SCRIPTS
hl.bind(mainMod .. " + " .. "D", hl.dsp.exec_cmd("rofi -show drun"))
hl.bind(mainMod .. " + " .. "Return", hl.dsp.exec_cmd("kitty"))
hl.bind(mainMod .. " + " .. "E", hl.dsp.exec_cmd("thunar"))

--waybar
hl.bind(mainMod .. " + " .. "B", hl.dsp.exec_cmd("killall -SIGUSR1 waybar"))

-- Toggle hide/show waybar

--hyprland
hl.bind("CTRL + ALT + Delete", hl.dsp.exec_cmd("hyprctl dispatch exit"))

--hyprpicker
hl.bind(mainMod .. " + " .. "C", hl.dsp.exec_cmd("hyprpicker"))

--volume
hl.bind(mainMod .. " + " .. "F3", hl.dsp.exec_cmd("amixer sset Master 5%+"))
hl.bind(mainMod .. " + " .. "F2", hl.dsp.exec_cmd("amixer sset Master 5%-"))
hl.bind(mainMod .. " + " .. "F1", hl.dsp.exec_cmd("amixer sset Master toggle"))

--brigthnessctl
hl.bind(mainMod .. " + " .. "F6", hl.dsp.exec_cmd("brightnessctl set +5%"))
hl.bind(mainMod .. " + " .. "f5", hl.dsp.exec_cmd("brightnessctl set 5-%"))

--clipboard
hl.bind(mainMod .. " + " .. "V", hl.dsp.exec_cmd("cliphist list | rofi -dmenu | cliphist decode | wl-copy"))

--screenshots
hl.bind(
	mainMod .. " + " .. "Print",
	hl.dsp.exec_cmd("grim /home/tima/images/screenshots/scr_$(date +%Y%m%d%H%M%S).png | wl-copy")
)

hl.bind(
	mainMod .. " + " .. "CTRL" .. " + " .. "Print",
	hl.dsp.exec_cmd('grim -g "$(slurp)" /home/tima/images/screenshots/scr_$(date +%Y%m%d%H%M%S).png | wl-copy')
)
