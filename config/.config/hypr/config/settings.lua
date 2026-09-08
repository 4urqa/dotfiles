--          _   _   _
--  ___ ___| |_| |_(_)_ _  __ _ ___
-- (_-</ -_)  _|  _| | ' \/ _` (_-<
-- /__/\___|\__|\__|_|_||_\__, /__/
--                        |___/

hl.monitor({
	output = "eDP-1",
	mode = "1920x1080",
	position = "auto",
	scale = 1.2,
})

hl.config({
	dwindle = {
		preserve_split = true,
		special_scale_factor = 2.0,
	},
})

hl.config({
	master = {
		new_on_top = 1,
		mfact = 0.5,
	},
})

hl.config({
	general = {
		gaps_in = 4,
		gaps_out = 8,
		border_size = 0,
		resize_on_border = true,
		layout = "dwindle",
		col = {
			active_border = "rgba(f0f0f0ff)",
			inactive_border = "rgba(333333ee)",
		},
	},
})

hl.config({
	decoration = {
		rounding = 16,
		active_opacity = 1.0,
		inactive_opacity = 1.0,
		fullscreen_opacity = 1.0,
		dim_inactive = false,
		dim_strength = 0.15,
		shadow = {
			enabled = false,
		},
		blur = {
			enabled = true,
			size = 6,
			passes = 3,
			ignore_opacity = false,
			new_optimizations = true,
		},
	},
})

hl.config({
	input = {
		force_no_accel = 1,
		kb_layout = "us,ru,ua",
		kb_options = "grp:alt_shift_toggle",
		repeat_rate = 50,
		repeat_delay = 300,
		numlock_by_default = 1,
		left_handed = 0,
		follow_mouse = 1,
		float_switch_override_focus = 0,
		touchpad = {
			disable_while_typing = 1,
			natural_scroll = 0,
			middle_button_emulation = 1,
			tap_to_click = 1,
			drag_lock = 0,
		},
	},
})

hl.config({
	animations = {
		enabled = true,
	},
})
hl.curve("wind", {
	type = "bezier",
	points = { { 0.05, 0.9 }, { 0.1, 1.05 } },
})
hl.curve("winIn", {
	type = "bezier",
	points = { { 0.1, 1.1 }, { 0.1, 1.1 } },
})
hl.curve("winOut", {
	type = "bezier",
	points = { { 0.3, -0.3 }, { 0, 1 } },
})
hl.curve("liner", {
	type = "bezier",
	points = { { 1, 1 }, { 1, 1 } },
})
hl.animation({ leaf = "windows", enabled = true, speed = 6, bezier = "wind", style = "slide" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 6, bezier = "winIn", style = "slide" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 5, bezier = "winOut", style = "slide" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 5, bezier = "wind", style = "slide" })
hl.animation({ leaf = "border", enabled = true, speed = 1, bezier = "liner" })
hl.animation({ leaf = "borderangle", enabled = true, speed = 30, bezier = "liner", style = "loop" })
hl.animation({ leaf = "fade", enabled = true, speed = 5, bezier = "default" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 5, bezier = "wind" })

hl.config({
	misc = {
		disable_hyprland_logo = true,
		disable_splash_rendering = true,
		mouse_move_enables_dpms = true,
		vrr = 2,
		enable_swallow = true,
		focus_on_activate = false,
		swallow_regex = "^(kitty)$",
	},
})

hl.config({
	binds = {
		workspace_back_and_forth = 1,
		allow_workspace_cycles = 1,
		pass_mouse_when_bound = 0,
	},
})

hl.config({
	xwayland = {
		force_zero_scaling = true,
	},
})
