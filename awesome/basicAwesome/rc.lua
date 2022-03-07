-- If LuaRocks is installed, make sure that packages installed through it are
-- found (e.g. lgi). If LuaRocks is not installed, do nothing.
pcall(require, "luarocks.loader")

-- Standard awesome library
gears = require("gears")
awful = require("awful")
require("awful.autofocus")
-- Widget and layout library
wibox = require("wibox")
-- Theme handling library
beautiful = require("beautiful")
-- Notification library
naughty = require("naughty")
menubar = require("menubar")
hotkeys_popup = require("awful.hotkeys_popup")
-- Enable hotkeys help widget for VIM and other apps
-- when client with a matching name is opened:
require("awful.hotkeys_popup.keys")

--{{{ Import of some random shit that isnt realy needed
	require("src/error-handling")
	require("src/user-variables")
	--{{{ Widgets
		require("src/wibar/widget/menu")
		require("src/wibar/widget/text-clock")
		require("src/wibar/widget/keyboard-layout")
        require("src/wibar/widget/taglist")
        require("src/wibar/widget/tasklist")
        require("src/wibar/widget/promptbox")
        require("src/wibar/widget/layoutbox")
	--}}}
    require("src/tags")
    require("src/wibar/wibar")
    require("src/wibar/wallpaper")
    --{{{ Bindings
        require("src/bindings/mouse-bindings")
        require("src/bindings/keyboard-bindings")
    --}}}
    require("src/rules")
    require("src/signals")
    require("src/titlebar")
--}}}

--{{{ Error Handling
	checkStartupErrors()
	handleStartupErrors()
--}}}

RC = {
  defaultApplications = {},
}


--{{{User Variable stuff 
	setTheme()
	setDefaultApplications()
	setModkey()
	setLayouts()
--}}}

--{{{ Dont know what this shit should do or does
-- Menubar configuration 
--menubar.utils.terminal = RC.defaultApplications.terminal -- Set the terminal for applications that require it
-- }}}

--{{{ The tags then initalize the wibar and the wibar the widgets
    initializeTags()
--}}}

--{{{ Set bindings
    setMouseBindings()
    setGlobalKeys()
    setClientKeys()
    connectKeysToTags()
    setClientButtons()
    setKeys()
--}}}





--{{{ Rules
    setRules()
--}}}

--{{{ Titlebar
    initializeTitlebar()
--}}}

-- {{{ Signals
    initializeSignals()
--}}}
