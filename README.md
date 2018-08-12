## Toward a more useful keyboard

Custom configuration of [Keyboard
Repo](https://github.com/jasonrudolph/keyboard) with few additional window
management keybindings and few karabiner keybindings.

📣 Shout-out to [@jasonrudolph](https://github.com/jasonrudolph)

## Karabiner Keybindings
* Change right option to Hyper (i.e., command+control+option+shift)
* Map fn + number keys to their corresponding function keys (rev 1)
* Change caps_lock to control if pressed with other keys, to escape if pressed alone.

## Features

- [Access <kbd>control</kbd> and <kbd>escape</kbd> on the home row](#a-more-useful-caps-lock-key)
- [Navigate (up/down/left/right) via the home row](#super-duper-mode)
- [Navigate to previous/next word via the home row](#super-duper-mode)
- [Arrange windows via the home row](#window-layout-mode)
- [Enable other commonly-used actions on or near the home row](#miscellaneous-goodness)
- [Format text as Markdown](#markdown-mode)
- [Launch commonly-used apps via global keyboard shortcuts](#hyper-key-for-quickly-launching-apps)
- [And more...](#miscellaneous-goodness)

### A more useful caps lock key

By repurposing the anachronistic <kbd>caps lock</kbd> key, we can make <kbd>control</kbd> and <kbd>escape</kbd> accessible via the home row.

- Tap <kbd>caps lock</kbd> for <kbd>escape</kbd>
- Hold <kbd>caps lock</kbd> for <kbd>control</kbd>

📣 Shout-out to [@arbelt](https://github.com/arbelt) and [@jasoncodes](https://github.com/jasoncodes) for [the implementation](https://github.com/jasonrudolph/keyboard/commit/01a7a5bd8a1e521756d1ec34769119ead5eee0b3). ⚡️🍻🌟

### Window Layout Mode

Quickly arrange and resize windows in common configurations, using keyboard shortcuts that are on or near the home row. (Or, feel free to [choose your own keyboard shortcuts](#choose-your-own-keybindings).)

#### Default keybindings

Use <kbd>control</kbd> + <kbd>s</kbd> to turn on Window Layout Mode. Then, use
any shortcut below to move windows do your bidding. For example, to send the
window left, hit <kbd>control</kbd> + <kbd>s</kbd>, and then hit <kbd>h</kbd>

- Use <kbd>h</kbd> to send window left (left half of screen)
- Use <kbd>j</kbd> to send window down (bottom half of screen)
- Use <kbd>k</kbd> to send window up (top half of screen)
- Use <kbd>l</kbd> to send window right (right half of screen)
- Use <kbd>u</kbd> toggle window to the left with width 30%/70%
- Use <kbd>p</kbd> toggle window to the right with width 30%/70%
- Use <kbd>i</kbd> to send window to upper left quarter of screen
- Use <kbd>o</kbd> to send window to upper right quarter of screen
- Use <kbd>,</kbd> to send window to lower left quarter of screen
- Use <kbd>.</kbd> to send window to lower right quarter of screen
- Use <kbd>space</kbd> to send window to center of screen
- Use <kbd>enter</kbd> to resize window to fill the screen
- Use <kbd>f</kbd> to toggle full screen mode
- Use <kbd>n</kbd> to send window to the next monitor
- Use <kbd>←</kbd> to send window to the monitor on the left (if there is one)
- Use <kbd>→</kbd> to send window to the monitor on the right (if there is one)
- Use <kbd>control</kbd> + <kbd>s</kbd> to exit Window Layout Mode

[<img src="https://cloud.githubusercontent.com/assets/2988/22397114/715cc12e-e538-11e6-9dcd-b3447af0d9dd.png" alt="Window Layout Mode Keybindings (1)" width="400"/>](https://cloud.githubusercontent.com/assets/2988/22397114/715cc12e-e538-11e6-9dcd-b3447af0d9dd.png) [<img src="https://cloud.githubusercontent.com/assets/2988/22397111/45672fe6-e538-11e6-905d-5b0234e290bb.png" alt="Window Layout Mode Keybindings (2)" width="400"/>](https://cloud.githubusercontent.com/assets/2988/22397111/45672fe6-e538-11e6-905d-5b0234e290bb.png)

#### Choose your own keybindings

Window Layout Mode ships with the default keybindings above, but you're welcome to personalize this setup. See [`hammerspoon/windows-bindings-defaults.lua`](hammerspoon/windows-bindings-defaults.lua) for instructions on configuring shortcuts to your personal taste.

### Markdown Mode

Perform common [Markdown](https://daringfireball.net/projects/markdown/syntax)-formatting tasks anywhere that you're editing text (e.g., in a GitHub comment, in your editor, in your email client).

Use <kbd>control</kbd> + <kbd>m</kbd> to turn on Markdown Mode. Then, use any shortcut below to perform an action. For example, to format the selected text as bold in Markdown, hit <kbd>control</kbd> + <kbd>m</kbd>, and then <kbd>b</kbd>.

- Use <kbd>b</kbd> to wrap the currently-selected text in double asterisks ("B" for "Bold")

    Example: `**selection**`

- Use <kbd>c</kbd> to wrap the currently-selected text in backticks ("C" for "Code")

    Example: `` `selection` ``

- Use <kbd>i</kbd> to wrap the currently-selected text in single asterisks ("I" for "Italic")

    Example: `*selection*`

- Use <kbd>s</kbd> to wrap the currently-selected text in double tildes ("S" for "Strikethrough")

    Example: `~~selection~~`

- Use <kbd>l</kbd> to convert the currently-selected text to an inline link, using a URL from the clipboard ("L" for "Link")

    Example: `[selection](clipboard)`

- Use <kbd>control</kbd> + <kbd>m</kbd> to exit Markdown Mode without performing any actions

### Hyper key for quickly launching apps

macOS doesn't have a native <kbd>hyper</kbd> key. But thanks to Karabiner-Elements, we can [create our own](karabiner/karabiner.json). In this setup, we'll use the <kbd>right option</kbd> key as our <kbd>hyper</kbd> key.

With a new modifier key defined, we open a whole world of possibilities. I find it especially useful for providing global shortcuts for launching apps.

#### Choose your own apps

Hyper Mode ships with the default keybindings below, but you'll likely want to personalize this setup. See [`hammerspoon/hyper-apps-defaults.lua`](hammerspoon/hyper-apps-defaults.lua) for instructions on configuring shortcuts to launch *your* most commonly-used apps.

#### Default app keybindings

- <kbd>hyper</kbd> + <kbd>a</kbd> to open iTunes ("A" for "Apple Music")
- <kbd>hyper</kbd> + <kbd>b</kbd> to open Google Chrome ("B" for "Browser")
- <kbd>hyper</kbd> + <kbd>c</kbd> to open Slack ("C for "Chat")
- <kbd>hyper</kbd> + <kbd>d</kbd> to open [Remember The Milk](https://www.rememberthemilk.com/) ("D" for "Do!" ... or "Done!")
- <kbd>hyper</kbd> + <kbd>e</kbd> to open [Atom](https://atom.io) ("E" for "Editor")
- <kbd>hyper</kbd> + <kbd>f</kbd> to open Finder ("F" for "Finder")
- <kbd>hyper</kbd> + <kbd>g</kbd> to open [Mailplane](http://mailplaneapp.com/) ("G" for "Gmail")
- <kbd>hyper</kbd> + <kbd>s</kbd> to open [Slack](https://slack.com/downloads/osx) ("S" for "Slack")
- <kbd>hyper</kbd> + <kbd>t</kbd> to open [iTerm2](https://www.iterm2.com/) ("T" for "Terminal")

### Miscellaneous goodness

- Use <kbd>control</kbd> + <kbd>h</kbd> / <kbd>j</kbd> / <kbd>k</kbd> /
  <kbd>l</kbd> to move cursor left/down/up/right 
- Use <kbd>control</kbd> + <kbd>u</kbd> to delete to the start of the line
- Use <kbd>control</kbd> + <kbd>;</kbd> to delete to the end of the line
- Use <kbd>option</kbd> + <kbd>h</kbd> / <kbd>l</kbd> to delete the previous/next word
- Use <kbd>control</kbd> + <kbd>option</kbd> + <kbd>j</kbd> / <kbd>k</kbd> for pagedown/pageup

## Dependencies

This setup is honed and tested with the following dependencies.

- macOS High Sierra, 10.13
- [Karabiner-Elements 11.4.0][karabiner]
- [Hammerspoon 0.9.57][hammerspoon]

## Installation

1. Grab the bits

    ```sh
    git clone https://github.com/jasonrudolph/keyboard.git ~/.keyboard

    cd ~/.keyboard

    script/setup
    ```

2. Enable accessibility to allow Hammerspoon to do its thing [[screenshot]](screenshots/accessibility-permissions-for-hammerspoon.png)

## TODO

- Add [#13](https://github.com/jbharat/keyboard/pull/13) to [features](#features):
    - Hold option for push-to-talk/push-to-mute
    - Double-tap option to mute/unmute microphone

[customize]: http://dictionary.reference.com/browse/customize
[don't-make-me-think]: http://en.wikipedia.org/wiki/Don't_Make_Me_Think
[karabiner]: https://github.com/tekezo/Karabiner-Elements
[hammerspoon]: http://www.hammerspoon.org
[hammerspoon-releases]: https://github.com/Hammerspoon/hammerspoon/releases
[modern-space-cadet]: http://stevelosh.com/blog/2012/10/a-modern-space-cadet
[modern-space-cadet-key-repeat]: http://stevelosh.com/blog/2012/10/a-modern-space-cadet/#controlescape
