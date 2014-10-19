# padfiler
### ver. 0.1

## The hell is this thing?
It's a little shell script that wraps Antimicro. Antimicro maps gamepads to keyboard buttons to help support games that don't support gamepads or *don't support them very well*, but the problem with the latter is that without help, games that badly support gamepads will still see them and mess things up. For example, you're playing King of Fighters XIII through Wine, which can see axes, but ignores buttons. But it has comprehensive keyboard mappings! So use antimicro, and-- oh shit, it's still seeing those gamepads. So this script makes the gamepads invisible to regular users.

## Why the ever-loving shit are you writing into sudoers.d?
How else do you think I'm going to make the gamepads invisible? The program needs to run as root, and it can do that for itself. In order to do that, it needs a sudoers.d file. There is really no other way to hide a gamepad from most of the system. It's the least intrusive way to do it that will work for all varieties of applications.

## Does it do anything else for me?
* Antimicro has no built-in support for putting different profiles on different controllers from the command line. This fixes that.
* In addition, it provides a convenient command line interface for starting, stopping, creating and editing profiles.
* And lastly, you can use it to disable certain classes of joystick devices. It's most useful for wine games.

## Okay, explain the CLI.
* `padfiler start profile1 [profile2]`: Starts up a profile for one or two controllers.
* `padfiler stop`: Kills Antimicro unceremoniously.
* `padfiler create profile`: Creates a profile in /etc/padfiles/ and opens Antimicro to edit it.
* `padfiler edit profile`: Edits an existing profile.
* `padfiler lock-js`: Locks JS devices.
* `padfiler lock-event`: Locks event gamepads.
* `padfiler lock-all`: Locks all gamepad devices. This gets called internally before starting a profile.
* `padfiler unlock`: Unlocks all gamepad devices. This gets called internally once antimicro quits.

## This sucks.
Okay, make it better. Submit pull requests!

## Thanks for making this!
You're welcome! Enjoy! :D
