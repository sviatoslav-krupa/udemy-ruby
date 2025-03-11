## Notes
* A gem is just an add-on or extension or expansion
* Core Ruby language is going to have constructs that every program needs, like arrays and hashes
* Ruby Standard Library is going to have additional functionality that a lot of projects are going to need, like date times or testing
* Gems are one step beyond that: they're here to help you solve real world problems in specific domains
* Semantic versioning (community best practice): `major_version.minor_version.patch_version`:
  * major_version - when incremented, that indicates a breaking change that indicates that that gem or that piece of software has introduced a new feature that potentially breaks previous versions
  * minor_version - when incremented, introducing new features or new functionalities, but nothing that is going to break the core gem itself
  * patch_version - when incremented, the developers make a bug fix or a small, tiny improvement that is pretty much typically unnoticeable. It's a way to introduce new code and upgrade the actual number, but not really typically change much of anything besides small details

## Gem Package Manager
* `$ gem -v` - get installed version of Gem Package Manager
* `$ gem update --system` - download and update the gem package manager for the active version of Ruby
* `$ gem install gem_name` - download the latest version of Ruby Gem; set up the gem to be available for any program that happens to be using the current version of Ruby
* `$ gem uninstall gem_name` - removes Ruby Gem

## Gemfile
* A plain text file or essentially a ruby file where we declare all of our project's dependencies
* Gemfile.lock - is a more specific locked down version of dependencies. When you commit this project to source control and another developer downloads the code, the bundler is going to look for the Gemfile and the Gemfile.lock to determine what needs to download; this will ensure that multiple developers on the same team running bundle install will always get the exact same versions of dependencies, which will ensure that all developers are working with the same code. Should be added to the source control

## Bundle
* Bundle - is a pre-installed program that's going to look for a gem file in the current directory, find all the dependencies, including all of their sub dependencies, figure out everything you need to download and do that all in a single command
* `$ bundle install` - to install gems from Gemfile

## RubyGems
* https://rubygems.org
