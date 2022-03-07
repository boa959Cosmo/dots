--{{{ Initialzes the Tags for each screen
  function initializeTags ()
    
    -- Re-set wallpaper when a screen's geometry changes (e.g. different resolution)
    screen.connect_signal("property::geometry", setWallpaper) 
    
    awful.screen.connect_for_each_screen(
      function(s)
        -- Wallpaper
        setWallpaper(s)
        
        -- Each screen has its own tag table.
        awful.tag({ "1", "2", "3", "4", "5", "6", "7", "8", "9" }, s, RC.layouts[1])
        
        initializeWibar(s)
        
      end
    )
  end
--}}}