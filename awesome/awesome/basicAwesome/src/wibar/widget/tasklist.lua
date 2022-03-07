-- In this file the tasklist is created 

--{{{ Creates tasklist widget template
	local tasklist_buttons = gears.table.join(
	  awful.button({ }, 1, 
			function (c)
	      if c == client.focus then
	        c.minimized = true
	      else
	        c:emit_signal(
	            "request::activate",
	            "tasklist",
	            {raise = true}
	        )
	      end
	    end
		),
	  awful.button({ }, 3, 
			function()
	      awful.menu.client_list({ theme = { width = 250 } })
	    end
		),
	  awful.button({ }, 4,
			function ()
	      awful.client.focus.byidx(1)
	  	end
		),
	  awful.button({ }, 5, 
			function ()
	  	  awful.client.focus.byidx(-1)
	  	end
		)
	)
--}}}

--{{{ Creates the widget after the template
	function getTasklist (currentScreen) 
		tasklist = awful.widget.tasklist {
			screen  = currentScreen,
			filter  = awful.widget.tasklist.filter.currenttags,
			buttons = tasklist_buttons
		}
		return tasklist
	end
--}}}
  