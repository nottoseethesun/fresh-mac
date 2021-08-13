# fresh-mac

![Fresh macaroni](./images/maccheroni_macro.jpg)

## Story

Sometimes, we don't want to just use Time Machine to migrate to a new Mac.  We want a fresh Mac, unencumbered by the bulk we have accumulated over the years.  

Or other times, we don't have a Mac to migrate from, because we just joined a new company.

Either way, `fresh-mac` is your friend.  It will get you up and developing right away.

## Overview

`fresh-mac` is a script that saves time in setting up a new Mac for use as a developer machine by automating installation and set-up tasks.

This can save an hour or more of mindless work, and ensures that all your tools are there when you need them.

With just a single script for the user to run manually, `fresh-mac` automates the installation and set up of homebrew programs (`brew`), apps from the MacOS AppStore, system preferences, git completion, global `npm` packages, and `.bash_profile` and `.bashrc`.

### Aims

#### Package Managers

`fresh-mac` is biased towards package management: homebrew and App Store, in that order, because `brew update` is so easy, well-managed, and good.  

#### Idempotency

Re-running `fresh-mac` should never hurt.  This lets users get the install done in the easiest way possible even if there are problems at first.

Note that home dir files that `fresh-mac` overwrites are always saved in `~/.fresh-mac/backup`.  However, get anything you need out of there before running the script twice in a row, so you don't lose any customizations you had. :)

## Usage

### Set-up

First, make sure your user has administrative privileges.

Second, sign in to the Mac App Store.

You may need to quit any app if you are running it and it's in the list of apps to be installed by the App Store (see the `mas` entries in `./homebrew/Brewfile`).  You can quit it later when the App Store tells you, or you can quit as part of this set-up step, for a smoother experience.

If there is any problem, you can always make any corrections needed and then re-run the `fresh-mac` script.

### Optional Info

First, see the [Customizing](#customizing) and [Caveats](#caveats) sections, below.

Second, if you've uncommented the Xcode install in the `Brewfile`, find something else to do for an hour or so while XCode installs.  You can continue to use your computer while the install progresses.

### Running

```bash
cd fresh-mac
./master-setup.sh
```

## Customizing

You can manually update any of the install lists, preferences lists (`.plist`s), or home-directory dot files.  For example, you might need a somewhat different set of packages and apps.

You may wish to simply start customizing by commenting out any parts of `./master-setup.sh` that you don't want to run.

## Caveats

Not everything might work perfectly with this, but it should still save a lot of time.

If you find something that doesn't work as expected, please fix and push your fix.  See [Contributing](#contributing).

## Troubleshooting

If you encounter any failures, you can just edit the files in question, delete any pre-existing apps that are conflicting, and so on, and then simply re-run the `fresh-mac` script.  

Re-running `fresh-mac` does not hurt.

### Error on App Already in Applications Folder

Delete the app in the `Applications` folder, and re-run `fresh-mac` (or just `brew` if you want, on the `fresh-mac` `Brewfile`).  This way, `brew` will be able to manage the app, instead of having to use the App Store/`mas`.

### App Store Apps Won't Download

The app must have already been installed by your current iCloud user.  So to fix this, you'll have to manually use the App Store gui to click and install.  If this bugs you, vote for the appropriate issue on [https://github.com/Homebrew/brew/issues].

### Error: Bad CPU type in executable

`brew uninstall` the offending package.  If that doesn't work, you might be using some other version manager, such as `nvm`.  If use that to uninstall any offending versions.  If you're using `nvm`, then do `nvm use system`, and re-rerun `fresh-mac`.

### npm ERR! code EEXIST

For some reason, the `npx` package complains when it is already installed and a command is given to install it.  This can be ignored for `npx` and other packages.  `fresh-mac` never uses `--force` so don't worry.

## Contributing

Read the [Aims](#aims) and [Roadmap](#roadmap) sections and ensure that your contributions further those aims.

Submit a feature or bugfix pr from your branch/fork.

## Roadmap

* Option to skip copying over homedir files
* Make everything work from a `Makefile`, like standard practice
* Implement a checkbox u.i. for packages e.g. with `ncurses`
* Offer a package tree for the `brew` and `mas` package managers - e.g., "frontend", "web", "native", "backend", "ml"
* Make this work on Linux (homebrew works great on Linux)
* Intelligent merge option with existing homedir files

## Project Logo Credit and License

The project logo, `maccheroni_macro.jpg`, is licensed under the [CCA 3](https://creativecommons.org/licenses/by/3.0/) by `freeimageslive.co.uk`.
