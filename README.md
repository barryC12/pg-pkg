# pg

> A simple, universal package manager wrapper for Linux.

pg provides one consistent interface across multiple distributions while automatically using the correct backend package manager.

---

## Features

- Unified commands across package managers
- Automatic detection (runs once and caches config)
- Optional helpers (nala for apt, paru for Arch)
- Persistent configuration (`~/.config/pg/config.pg`)
- Reconfigurable anytime
- Lightweight and fast

---

## Supported Systems

| System            | Backend Used |
|------------------|-------------|
| Debian / Ubuntu  | `nala` / `apt` |
| Arch Linux       | `pacman` / `paru` |
| Fedora           | `dnf` |
| openSUSE         | `zypper` |
| Gentoo           | `emerge` |
| Void Linux       | `xbps` |

---

## Installation

```bash
git clone https://codeberg.org/barryC12/pg.git
cd pg
chmod +x pg
sudo mv pg /usr/local/bin/