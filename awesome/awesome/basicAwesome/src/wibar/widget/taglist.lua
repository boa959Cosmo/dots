-- In this file the taglist is created
--{{{ Creates a taglist template
  local taglist_buttons = gears.table.join(
    awful.button({ }, 1, 
      function(t) 
        t:view_only() 
      end
    ),
    awful.button({ modkey }, 1, 
      function(t)
        if client.focus then
            client.focus:move_to_tag(t)
        end
      end
    ),
    awful.button({ }, 3, 
      awful.tag.viewtoggle
    ),
    awful.button({ modkey }, 3, 
      function(t)
        if client.focus then
            client.focus:toggle_tag(t)
        end
      end
    ),
    awful.button({ }, 4, 
      function(t) 
        awful.tag.viewnext(t.screen) 
      end
    ),
    awful.button({ }, 5, 
      function(t) 
        awful.tag.viewprev(t.screen) 
      end
    )
  )
--}}}

--{{{ Creates the widget after the template
  function getTaglist (currentScreen)
    taglist = awful.widget.taglist {
      screen  = currentScreen,
      filter  = awful.widget.taglist.filter.all,
      buttons = taglist_buttons
    }
    return taglist
  end
--}}}