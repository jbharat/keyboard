local event = hs.eventtap.event
local eventTypes = hs.eventtap.event.types
local log = hs.logger.new('updown.lua', 'debug')

local isInTerminal = function()
  app = hs.application.frontmostApplication():name()
  return app == 'iTerm2' or app == 'Terminal'
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

wordStart = function() fastKeyStroke({'alt'}, 'left') end
wordEnd = function() fastKeyStroke({'alt'}, 'right') end

textStart = function() keyUpDown({'cmd'}, 'up') end
textEnd = function() keyUpDown({'cmd'}, 'down') end

selectLineStart = function() keyUpDown({'cmd', 'shift'}, 'left') end
selectLineEnd = function() keyUpDown({'cmd', 'shift'}, 'right') end

selectWordStart = function() fastKeyStroke({'alt', 'shift'}, 'left') end
selectWordEnd = function() fastKeyStroke({'alt', 'shift'}, 'right') end

selectTextStart = function() keyUpDown({'cmd', 'shift'}, 'up') end
selectTextEnd = function() keyUpDown({'cmd', 'shift'}, 'down') end

-- bind ctrl-j/k/h/l as down/up/left/right
hs.hotkey.bind({'ctrl'}, 'j', down, nil, down)
hs.hotkey.bind({'ctrl'}, 'k', up, nil, up)
hs.hotkey.bind({'ctrl'}, 'h', left, nil, left)
hs.hotkey.bind({'ctrl'}, 'l', right, nil, right)
--
-- -- bind ctrl-a/e as move to line start/end
hs.hotkey.bind({'ctrl'}, 'a', lineStart)
hs.hotkey.bind({'ctrl'}, 'e', lineEnd)
--
-- -- bind ctrl+option+h/l as move to word start/end
-- hs.hotkey.bind({'ctrl', 'alt'}, 'h', wordStart, nil, wordStart)
-- hs.hotkey.bind({'ctrl', 'alt'}, 'l', wordEnd, nil, wordEnd)
--
-- -- bind ctrl+option+j/k as move to text end/start
-- hs.hotkey.bind({'ctrl', 'alt'}, 'j', textEnd)
-- hs.hotkey.bind({'ctrl', 'alt'}, 'k', textStart)
--
-- -- bind ctrl+shift+a/e as select till line start/end
-- hs.hotkey.bind({'ctrl', 'shift'}, 'a', selectLineStart)
-- hs.hotkey.bind({'ctrl', 'shift'}, 'e', selectLineEnd)
--
-- -- bind ctrl+option+shift+h/l as select till word start/end
-- hs.hotkey.bind({'ctrl', 'alt', 'shift'}, 'h', selectWordStart, nil, selectWordStart)
-- hs.hotkey.bind({'ctrl', 'alt', 'shift'}, 'l', selectWordEnd, nil, selectWordEnd)
--
-- -- bind ctrl+option+shift+j/k as select till text start/end
-- hs.hotkey.bind({'ctrl', 'alt', 'shift'}, 'j', selectTextEnd)
-- hs.hotkey.bind({'ctrl', 'alt', 'shift'}, 'k', selectTextStart)
--
-- -- bind ctrl+option+j/k as pagedown/pageup
hs.hotkey.bind({'ctrl', 'alt'}, 'f', pagedown, nil, pagedown)
hs.hotkey.bind({'ctrl', 'alt'}, 'b', pageup, nil, pageup)
