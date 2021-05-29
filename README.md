# US International keyboard witout deadkeys overlay

This AHK script is intended to be used with `US` keyboard layout, and maps some of the AltGr hotkeys to the same symbols as `US International` keyboard.

By doing it this way we get a `US international without deadkeys` layout, but without the negative side effect `Ctrl + Alt + ...` shortcuts not working in all programs (since Windows does not treat `AltGr` as a different key).
This script however does treat `right alt` as a different key than `left alt` or `Ctrl + Alt`.

## Keyboard shortcuts

For full list (or to add your own) simply edit the .ahk file in a text editor.

Note that the `RAlt` shortcuts will automatically be deactivated on e.g. Norwegian layout, since it is no longer an `RAlt` button but rather an `AltGr` (aka. `Left Control + Right Alt`).

## Special shortcuts

| Hotkey          | Function                      |
|-----------------|-------------------------------|
| `AltGr + Enter` | Set keyboard language to `US` |
| `RAlt + Enter`  | Set keyboard language to `US` |

## Symbols

| Hotkey             | Function |
|--------------------|----------|
| `RAlt + 2`         | ²        |
| `RAlt + 3`         | ³        |
| `RAlt + 4`         | ¤        |
| `RAlt + 5`         | €        |
| `RAlt + 6`         | ¼        |
| `RAlt + 7`         | ½        |
| `RAlt + 8`         | ¾        |
| `RAlt + 9`         | ‘        |
| `RAlt + 0`         | ’        |
| `RAlt + -`         | ¥        |
| `RAlt + =`         | ×        |
| `RAlt + m`         | µ        |
| `RAlt + c`         | ©        |
| `RAlt + [`         | «        |
| `RAlt + ]`         | »        |
| `RAlt + Shift + ;` | °        |
| `RAlt + Shift + 1` | ¹        |
| `RAlt + Shift + 4` | £        |
| `RAlt + Shift + =` | ÷        |
| `RAlt + Shift + s` | §        |

## Special letters

### Norwegian letters

| Hotkey       | Function |
|--------------|----------|
| `RAlt + z/Z` | æ/Æ      |
| `RAlt + l/L` | ø/Ø      |
| `RAlt + w/W` | å/Å      |

### Accented letters

| Hotkey     | Function |
|------------|----------|
| `RAlt + e` | é        |
| `RAlt + E` | É        |
