# pg

A unified package manager wrapper for Linux — one command to rule them all.

`pg` lets you install, update, remove, and manage packages using the same commands regardless of which distro or package manager you're on. Whether you're on Debian, Arch, Fedora, openSUSE, Void, or Gentoo, `pg` speaks your distro's language automatically.

---

## Supported Distros

| Distro / Family | Package Manager |
|---|---|
| Debian, Ubuntu, Mint, Pop!_OS, and derivatives | `apt` |
| Arch Linux, Manjaro, EndeavourOS, and derivatives | `pacman` |
| Fedora, RHEL, CentOS Stream, and derivatives | `dnf` |
| openSUSE Leap / Tumbleweed | `zypper` |
| Void Linux | `xbps` |
| Gentoo | `emerge` |

---

## Installation

### ⚡ Quick Install (Recommended)

Make sure `curl` is installed, then run:

```sh
curl -fsSL https://raw.githubusercontent.com/barryC12/pg/refs/heads/master/quick-install/inst.pg | sh
```

That's it. The script will detect your package manager, install dependencies, clone the repo, and install `pg` automatically.

---

### 🔧 Manual Install

**1. Install dependencies using your package manager**

You need `make` and `git`. Install them for your distro:

```sh
# Debian / Ubuntu / Mint
sudo apt install make git

# Arch / Manjaro
sudo pacman -S make git

# Fedora / RHEL
sudo dnf install make git

# openSUSE
sudo zypper install make git

# Void Linux
sudo xbps-install make git

# Gentoo
sudo emerge sys-devel/make dev-vcs/git
```

**2. Clone the repository**

```sh
cd ~
git clone https://github.com/barryC12/pg.git
```

**3. Build and install**

```sh
cd pg
sudo make install
```

Done! `pg` is now available system-wide.

---

## Usage

After installing, run `pg` to configure your package manager, then use the commands below:

```sh
pg install <package>      # Install a package
pg remove <package>       # Remove a package
pg update                 # Update package lists
pg upgrade                # Upgrade all installed packages
pg search <package>       # Search for a package
pg info <package>         # Show information about a package
```

> **Tip:** Run `pg` with no arguments to see all available commands and options.

---

## Download

You can download or browse the source code on GitHub:

➡️ **[https://github.com/barryC12/pg](https://github.com/barryC12/pg)**

To download a ZIP of the latest source directly:

➡️ **[Download ZIP](https://github.com/barryC12/pg/archive/refs/heads/master.zip)**

---

## License

See [LICENSE](LICENSE) in the repository for details.
