--{{{ set MouseBindings
  function setMouseBindings ()
    root.buttons(gears.table.join(
      awful.button({ }, 3, 
        function () 
          mainMenu:toggle() 
        end
      ),
      awful.button({ }, 4, 
        awful.tag.viewnext
      ),
      awful.button({ }, 5, 
        awful.tag.viewprev
      )
    ))
  end
--}}}