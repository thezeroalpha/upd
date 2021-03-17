# upd: a tool to update everything on macOS
Wraps Homebrew, Pipx, RubyGems, and NPM (if you have them installed).
Easy to extend by defining a class per new package system.
Only depends on Ruby.

## Installation
### macOS
Via Homebrew (`brew install thezeroalpha/formulae/upd`), via the methods below.

### Other
You have two options:

* Install using make: run `make install` in the root of this repository
* Install manually: download the repo, then copy the `upd` script to a directory that's in your `PATH`, and copy the manpage.

## Extending
If you want to add a new package system, the class needs to contain one method: `do_upgrade`.
Optionally, you can define a `prompt_user` method to ask for user input, and a `cleanup` method to clean up (prune packages etc.).
This will probably be refactored in later releases.
Additionally, every class should check its dependencies (e.g. the package manager executable).
Make sure to run your code through `rubocop`.
