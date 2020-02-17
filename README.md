# lets-play-a-game 
Create a crontab to run a random **.sh** script every minute. This is scripts are customizable and can do whatever you program.

### Install
```sh
git clone https://github.com/CeloAugusto/lets-play-a-game
```
```sh
cd lets-play-a-game
/bin/bash config.sh
```

### Files
**config.sh:** create a cron job to run *lets_play_a_game.sh* every minute. See [crontab guru](https://crontab.guru/) If you don't know how to edit a cron.

**lets_play_a_game.sh:** Will play *jigsaws_puppet_laugh.wav* and run the *script.sh* of a random pack in the folder.

In **packs/** have the scripts that will randomly run.
If you want to add a custom pack, simple add a folder with any name with a *script.sh* inside, like:
```
packs/
L shrek/
  L script.sh
L bruh/
  L bruh.wav
  L script.sh
```

### Packs
The packs made by you can be added to the repository by pull request. Preferably they should work with the main Linux distros, and not be too offensive. Packages must have a simple ** info.txt ** that contains information about the package function.

If you don't want a package that is already in the repository, just delete it, or feel free to change it.
