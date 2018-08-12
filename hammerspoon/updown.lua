local eventtap = hs.eventtap
local eventTypes = hs.eventtap.event.types
local log = hs.logger.new('updown.lua', 'debug')

local function keyCode(key, modifiers)
  modifiers = modifiers or {}

  return function()
    hs.eventtap.event.newKeyEvent(modifiers, string.lower(key), true):post()
    hs.eventtap.event.newKeyEvent(modifiers, string.lower(key), false):post()
  end
end

-- bind ctrl-j/k as down/up
hs.hotkey.bind({'ctrl'}, 'j', keyCode('down'), nil, keyCode('down'))
hs.hotkey.bind({'ctrl'}, 'k', keyCode('up'), nil, keyCode('up'))
hs.hotkey.bind({'ctrl'}, 'h', keyCode('left'), nil, keyCode('left'))
hs.hotkey.bind({'ctrl'}, 'l', keyCode('right'), nil, keyCode('right'))
hs.hotkey.bind({'ctrl', 'alt'}, 'j', keyCode('pagedown'), nil, keyCode('pagedown'))
hs.hotkey.bind({'ctrl', 'alt'}, 'k', keyCode('pageup'), nil, keyCode('pageup'))
