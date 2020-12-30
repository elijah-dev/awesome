-- If LuaRocks is installed, make sure that packages installed through it are
-- found (e.g. lgi). If LuaRocks is not installed, do nothing.
pcall(require, "luarocks.loader")

gears = require("gears")
awful = require("awful")
require("awful.autofocus")
wibox = require("wibox")
beautiful = require("beautiful")
naughty = require("naughty")
menubar = require("menubar")
hotkeys_popup = require("awful.hotkeys_popup")
require("awful.hotkeys_popup.keys")

require "error_handler"

beautiful.init(os.getenv("HOME") .. "/.config/awesome/themes/custom/theme.lua")

terminal = "alacritty"
browser = "google-chrome-stable"
editor = os.getenv("EDITOR") or "nvim"
editor_cmd = terminal .. " -e " .. editor

modkey = "Mod4"

require "layouts"
require "panel"
require "key_bindings"
require "client_buttons"
require "rules"
require "autostart"
