--{{{ Create a launcher widget and a main menu widget
-- the main menu widget is used for the launcher and right click on the desktop

  -- Creates a menu for all actions related to awesomewm
  local function getAwesomeMenu () 
    awesomeMenu = {
      { "hotkeys", function() hotkeys_popup.show_help(nil, awful.screen.focused()) end },
      { "manual", RC.defaultApplications.terminal .. " -e man awesome" },
      { "edit config", RC.defaultApplications.editor_terminal .. " " .. awesome.conffile },
      { "restart", awesome.restart },
      { "quit", function() awesome.quit() end },
    }
    return awesomeMenu
  end

  -- creates the main menu widget
  function getMainMenu ()
    mainMenu = awful.menu({ 
      items = { 
        { "awesome", getAwesomeMenu(), beautiful.awesome_icon },
        { "open terminal", RC.defaultApplications.terminal }
      }
    })
    return mainMenu
  end

  -- creates the launcher widtget
  function getLauncher ()
    launcher = awful.widget.launcher({ 
      image = beautiful.awesome_icon, 
      menu = getMainMenu() 
    })
    return launcher
  end
--}}}
