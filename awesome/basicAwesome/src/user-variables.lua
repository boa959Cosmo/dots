-- In this file are things defined that are used multiple times in config and must be easy to change

--{{{ set Theme for awesomewm, themes define colours, icons, font and wallpapers
  function setTheme ()
    beautiful.init(gears.filesystem.get_themes_dir() .. "zenburn/theme.lua")
  end
--}}}


--{{{ set the default modkey
  function setModkey ()
    modkey = "Mod4"
  end
--}}}

--{{{ set the default programs for the config files in awesomewm
  function setDefaultApplications ()
    -- Default terminal
    RC.defaultApplications.terminal = "kitty"
    
    -- Default editor
    RC.defaultApplications.editor = os.getenv("EDITOR") or "nano"
    
    -- Default terminal editor
    RC.defaultApplications.editor_terminal = RC.defaultApplications.terminal .. " -e "  .. RC.defaultApplications.editor
  end
--}}}


--{{{ Creates and sets table of layouts -> layouts define the order of the windows

  -- creates table of layouts
  local function defineLayouts ()
    awful.layout.layouts = {
      awful.layout.suit.tile,
      awful.layout.suit.spiral.dwindle,
      awful.layout.suit.spiral,
      awful.layout.suit.floating,
    }
    return awful.layout.layouts
  end
  
  -- adds layout table to global var RC
  function setLayouts () 
    RC.layouts = defineLayouts()
  end
--}}}