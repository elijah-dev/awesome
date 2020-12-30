---------------------------
-- /icons awesome theme --
---------------------------

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local gfs = require("gears.filesystem")
local themes_path = os.getenv("HOME") .. "/.config/awesome/themes/custom"

local theme = {}

local black = "#2f343f"
local orange = "#FC9867"
local red = "#FF6188"
local blue = "#66a1ff"
local dim_blue = "#717d8f"
local white = "#c4c4c4"

theme.font          = "Iosevka 10"

theme.bg_normal     = black
theme.bg_focus      = black
theme.bg_urgent     = red
theme.bg_minimize   = black
theme.bg_systray    = black

theme.fg_normal     = white
theme.fg_focus      = white
theme.fg_urgent     = white
theme.fg_minimize   = dim_blue

theme.useless_gap   = dpi(5)
theme.border_width  = dpi(1)
theme.border_normal = black
theme.border_focus  = white
theme.border_marked = "#91231c"

theme.taglist_bg_focus = blue
theme.taglist_fg_focus = black
-- There are other variable sets
-- overriding the /icons one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty|volatile]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- prompt_[fg|bg|fg_cursor|bg_cursor|font]
-- hotkeys_[bg|fg|border_width|border_color|shape|opacity|modifiers_fg|label_bg|label_fg|group_margin|font|description_font]

-- Generate taglist squares:
--local taglist_square_size = dpi(12)
--theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
    --taglist_square_size, theme.fg_normal
--)
--theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(
    --taglist_square_size, theme.fg_normal
--)

-- Variables set for theming notifications:
-- notification_font
-- notification_[bg|fg]
-- notification_[width|height|margin]
-- notification_[border_color|border_width|shape|opacity]

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = themes_path.."/icons/submenu.png"
theme.menu_height = dpi(15)
theme.menu_width  = dpi(100)

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal = themes_path.."/icons/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = themes_path.."/icons/titlebar/close_focus.png"

theme.titlebar_minimize_button_normal = themes_path.."/icons/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus  = themes_path.."/icons/titlebar/minimize_focus.png"

theme.titlebar_ontop_button_normal_inactive = themes_path.."/icons/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = themes_path.."/icons/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = themes_path.."/icons/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = themes_path.."/icons/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = themes_path.."/icons/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = themes_path.."/icons/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = themes_path.."/icons/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = themes_path.."/icons/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = themes_path.."/icons/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = themes_path.."/icons/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = themes_path.."/icons/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = themes_path.."/icons/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = themes_path.."/icons/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = themes_path.."/icons/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = themes_path.."/icons/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = themes_path.."/icons/titlebar/maximized_focus_active.png"

theme.wallpaper = themes_path.."/icons/background.png"

-- You can use your own layout icons like this:
theme.layout_fairh = themes_path.."/icons/fairh.png"
theme.layout_fairv = themes_path.."/icons/fairv.png"
theme.layout_floating  = themes_path.."/icons/floating.png"
theme.layout_magnifier = themes_path.."/icons/magnifier.png"
theme.layout_max = themes_path.."/icons/max.png"
theme.layout_fullscreen = themes_path.."/icons/fullscreen.png"
theme.layout_tilebottom = themes_path.."/icons/tilebottom.png"
theme.layout_tileleft   = themes_path.."/icons/tileleft.png"
theme.layout_tile = themes_path.."/icons/tile.png"
theme.layout_tiletop = themes_path.."/icons/tiletop.png"
theme.layout_spiral  = themes_path.."/icons/spiral.png"
theme.layout_dwindle = themes_path.."/icons/dwindle.png"
theme.layout_cornernw = themes_path.."/icons/cornernw.png"
theme.layout_cornerne = themes_path.."/icons/cornerne.png"
theme.layout_cornersw = themes_path.."/icons/cornersw.png"
theme.layout_cornerse = themes_path.."/icons/cornerse.png"

-- Generate Awesome icon:
theme.awesome_icon = theme_assets.awesome_icon(
    theme.menu_height, theme.bg_focus, theme.fg_focus
)

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
