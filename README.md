# PlayMP3

Lyrion Music Server (LMS) plugin: **MP3**. MP3 tag handler that keeps different releases of the same album apart.

## Features

- File types: `mp3`
- Discogs release id (tag such as `DISCOGS_RELEASE_ID`) is used as the album id, so different releases of the same album / artist are not merged into one album
- Scanner-safe registration (`Register.pm`): the tag handler is registered both in the server and in the scanner (`Importer.pm`), without any web / UI dependency
- Tag handling only (plus transcoding rules for WMA); playback itself is handled by the Lyrion core

## Requirements

- Lyrion Music Server 7.7 or newer (developed on 9.1.1)

## Installation

Copy the `PlayMP3` folder into the `Plugins` directory of the server cache (for example `/config/cache/Plugins`), then restart Lyrion and rescan the library.

## Files

| File | Purpose |
| --- | --- |
| `install.xml` | Plugin manifest |
| `Plugin.pm` | Server plugin, registers the handler |
| `Importer.pm` | Scanner entry point |
| `Register.pm` | Registers the tag handler (shared by server and scanner) |
| `Formats/` | Tag handler for the file type |
| `strings.txt` | Text strings |

## Version

1.1

## Author

nicos
