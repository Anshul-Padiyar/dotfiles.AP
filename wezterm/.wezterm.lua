local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- === Fonts ===
config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 14

-- === Look & Feel ===
config.enable_tab_bar = false
config.window_decorations = "RESIZE"
-- config.window_background_opacity = 0.9

-- === Resolve HOME path cross-platform ===
local home = os.getenv("HOME") or os.getenv("USERPROFILE")

-- === Custom Color Schemes ===
local midnight = dofile(home .. "/.wezterm-colors/midnight-ap.lua")
local lazywave = dofile(home .. "/.wezterm-colors/lazywave-ap.lua")
local nordic = dofile(home .. "/.wezterm-colors/nordic-ap.lua")
local tokyo = dofile(home .. "/.wezterm-colors/tokyo-ap.lua")

-- Pick which theme to use:
local current_theme = "lazywave" -- change this: "midnight" | "lazywave" | "nordic" | "tokyo"

if current_theme == "midnight" then
	config.colors = midnight
elseif current_theme == "lazywave" then
	config.colors = lazywave
elseif current_theme == "nordic" then
	config.colors = nordic
elseif current_theme == "tokyo" then
	config.colors = tokyo
end

-- === Default Shell Setup ===
if wezterm.target_triple == "x86_64-pc-windows-msvc" then
	-- Windows → Git Bash (change path if different)
	config.default_prog = { "C:/Program Files/Git/bin/bash.exe", "-l" }
else
	-- Linux → bash
	config.default_prog = { "/bin/bash", "-l" }
end

return config
