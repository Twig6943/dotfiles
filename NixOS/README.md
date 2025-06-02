# This is mostly to learn NixOS see below ⬇️

# I probably won't ever use this due to not being able to install flatpaks/appimages to different drives through nixos's implementation (declaratively) (Turns out nobody was interested to write a module that does this)

# Directory structure

```
NixOS/
├──builders/    (currently unused, module for remote build machines to help speed up rebuild time)
├───machines/          (machine specific configuration)
│   ├───NixSlayer/         [Main Desktop]
├───modules/        (modules, all of which are machine-agnostic)
│   ├───core/         [modules managed with NixOS options and flake provided modules]
│   └───home-manager/        [modules managed with home-manager options and flake provided modules]
├───server/         [modules used for my hosted services on my server]
├───flake.nix       (my flake containing my inputs, outputs and 2 custom variables for each machine.)
└───flake.lock      (the flake lock, which controls version locks for each input.)
```

## Plans

- [x] Multi-system configuration
- [ ] DNS
- [ ] Replicate rebos conf from CachyOS

# General philosophy

The general philosophy is this configuration is simplicity and modularity.
Mostly so people I tell about NixOS can look at my configuration and understand
it.

### Warning ⚠️

Make sure you have the following credentials.
`MachineName` `NixSlayer`
`Username` `twig`

Make sure to replace [this](NixOS/machines/NixSlayer/hardware-configuration.nix#L34) with your main drive's uuid.

### Virtual machines

You might need to change [this line](/NixOS/modules/core/boot/bootloader.nix#L14) if you're on a virtual machine.

# How to Install?

Clone the repository (Either by downloading an archive through a browser or by adding `git` to your `/etc/nixos/configuration.nix` file.)

```console
cd
sudo rm -r ~/dotfiles ~/NixOS
git clone https://github.com/twig6943/dotfiles.git ~/dotfiles
cp -r ~/dotfiles/NixOS ~/NixOS
```

# Run the flake 

```console
sudo nixos-rebuild switch --flake ~/NixOS#NixSlayer
```

# What to do post-install? (note for self)

1 - Placeholder

2 - Refer to this page for KDE theming related stuff. It really does not look
like there are any declarative options for this so we have to do it imperatively
like
[this](https://github.com/shalva97/kde-configuration-files?tab=readme-ov-file#changing-appearance)
(disgusting, I know.)

And with that, you'll get this config on a brand new computer! Hopefully.

# Versioning

The versioning would be largely inconsistent if I version every update since
this is something I modify daily or at the very worst weekly BUT when there is a
major change I will bump the number up from 2.0 -> 3.0 for example. I will
update the current major version we're on when I release big updates for this
config such as changes to config structre.

Current major version: `5.0`
<br> Next Major version: `6.0` (Currently, there are no goals, but will be
released when my server configuration has full Kubernetes integration.) (No
plans for this yet as I don't have the hardware for testing currently.)

# Some stuff isn't working, why?

I admit that I sometimes set up stuff in my config that I don't make use of all
the time so if there is a problem I might not notice it myself so feel free to
open an issue (No, really I don't mind at all. Do it. It helps me better my
system too.)

Additionally, there are unused modules that are usually in a folder called
`unused/` in their respective directories, which may or may not work, though
usually they should because they did in the past.

## Heirarchy of fixes/workarounds applied

```
├──modules/core/gui/steam.nix    (gamescope workaround)
├──modules/home-manager/gui/flameshot.nix      (flameshot wayland fix)
├──modules/home-manager/gui/vesktop.nix        (vesktop override)
├──modules/home-manager/packages/packages.nix   (packages module)
└──modules/home-manager/packages/pkgcustom/     (pkgcustom)
```

## Info about workaround/fixes applied

**See paranthesis' above for related modules and their directories.**

<details>
<summary><b><font size="+3">gamescope workaround</font></b></summary>

The override used here for Gamescope running through steam on NixOS (yes, **very
specifically gamescope running through Steam on NixOS**) does not bring up the
gamescope window because gamescope looks for certain libraries in the provided
FHS environment and it can't find them in said FHS environment, therefore making
this workaround necessary.

</details>

<details>
<summary><b><font size="+3">flameshot wayland fix</font></b></summary>

The overrides used here make it so that flameshot is compiled with the
appropriate cmake flags so that it works on Wayland and locks the version to a
certain commit known to work with Wayland.
(https://github.com/flameshot-org/flameshot/issues/3012)

</details>

<details>
<summary><b><font size="+3">vesktop override</font></b></summary>

The overrides used here removes Vencord related branding and replaces the icons
and name with regular Discord's and adds launch flags that help with screen
sharing on Wayland.

</details>

<details>
<summary><b><font size="+3">packages module</font></b></summary>

This home manager managed module contains packages I manage under home-manager,
alongside some overrides and override templates that I plan to reuse later.

</details>

<details>
<summary><b><font size="+3">pkgcustom</font></b></summary>

packages that I plan to submit to nixpkgs in the future, some of which are
referenced in packages.nix but mostly not. The name is **pkgcustom** because it
sounded cool in my head.

</details>
