local event = hs.eventtap.event
local eventTypes = hs.eventtap.event.types
local log = hs.logger.new('updown.lua', 'debug')

local isInTerminal = function()
  app = hs.application.frontmostApplication():name()
  return app == 'iTerm2' or app == 'Terminal'
end

local isBrowser = function()
  app = hs.application.frontmostApplication():name()
  return app == 'Google Chrome' or app == 'Firefox' or app == 'Brave Browser'
end

fastKeyStroke = function(modifiers, character)
  event.newKeyEvent(modifiers, string.lower(character), true):post()
  event.newKeyEvent(modifiers, string.lower(character), false):post()
end

left = function() fastKeyStroke({''}, 'left') end
right = function()fastKeyStroke({''}, 'right') end
down = function() fastKeyStroke({''}, 'down') end
up = function() fastKeyStroke({''}, 'up') end

pagedown = function() fastKeyStroke({''}, 'pagedown') end
pageup = function() fastKeyStroke({''}, 'pageup') end

lineStart = function()
  if isInTerminal() then
    hotkeyForControlA = hs.fnutils.find(hs.hotkey.getHotkeys(), function(hotkey)
      return hotkey.idx == '⌃A'
    end)
    if hotkeyForControlA then hotkeyForControlA:disable() end

    keyUpDown({'ctrl'}, 'a')

    hs.timer.doAfter(0.2, function()
      if hotkeyForControlA then hotkeyForControlA:enable() end
    end)
  else
    keyUpDown({'cmd'}, 'left')
  end
end

lineEnd = function()
  if isInTerminal() then
    hotkeyForControlE = hs.fnutils.find(hs.hotkey.getHotkeys(), function(hotkey)
     return hotkey.idx == '⌃E'
    end)
    if hotkeyForControlE then hotkeyForControlE:disable() end

    keyUpDown({'ctrl'}, 'e')

    hs.timer.doAfter(0.2, function()
      if hotkeyForControlE then hotkeyForControlE:enable() end
    end)
  else
    keyUpDown({'cmd'}, 'right')
  end
end

browserBack = function()
  if isBrowser() then
    keyUpDown({'cmd'}, 'left')
  end
end

browserNext = function()
  if isBrowser() then
    keyUpDown({'cmd'}, 'right')
  end
end

-- bind options-j/k/h/l as down/up/left/right
hs.hotkey.bind({'alt'}, 'j', down, nil, down)
hs.hotkey.bind({'alt'}, 'k', up, nil, up)
hs.hotkey.bind({'alt'}, 'h', left, nil, left)
hs.hotkey.bind({'alt'}, 'l', right, nil, right)
--
-- -- bind ctrl-a/e as move to line start/end
hs.hotkey.bind({'ctrl'}, 'a', lineStart)
hs.hotkey.bind({'ctrl'}, 'e', lineEnd)

-- -- bing alt h/l to cmd-left/right in browsers
hs.hotkey.bind({'alt'}, 'h', browserBack)
hs.hotkey.bind({'alt'}, 'l', browserNext)

-- -- bind ctrl+option+j/k as pagedown/pageup
hs.hotkey.bind({'alt'}, 'd', pagedown, nil, pagedown)
hs.hotkey.bind({'alt'}, 'u', pageup, nil, pageup)
