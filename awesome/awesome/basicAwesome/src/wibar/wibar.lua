--{{{ Initializes the wibar
  function initializeWibar (s)
    s.promptbox = getPromptbox()
    s.layoutbox = getLayoutbox(s)
    s.taglist = getTaglist(s)
    s.tasklist = getTasklist(s)
    s.keyboardLayout = getKeyboardLayout()
    s.textClock = getTextClock()
    s.launcher = getLauncher()
    -- would be nice if implemented to getLayoutbox file
    s.layoutbox:buttons(gears.table.join(
        awful.button({ }, 1, function () awful.layout.inc( 1) end),
        awful.button({ }, 3, function () awful.layout.inc(-1) end),
        awful.button({ }, 4, function () awful.layout.inc( 1) end),
        awful.button({ }, 5, function () awful.layout.inc(-1) end)
      )
    )
    
    -- Create the wibox
    s.mywibox = awful.wibar({ position = "top", screen = s })
    
    -- Add widgets to the wibox
    s.mywibox:setup {
      layout = wibox.layout.align.horizontal,
      { -- Left widgets
      layout = wibox.layout.fixed.horizontal,
      s.launcher,
      s.taglist,
      s.promptbox,
      },
      s.tasklist, -- Middle widget
      { -- Right widgets
      layout = wibox.layout.fixed.horizontal,
      s.keyboardLayout,
      wibox.widget.systray(), -- shows programm specific icons like discord or steam
      s.textClock,
      s.layoutbox,
      },
    }
  end
--}}}