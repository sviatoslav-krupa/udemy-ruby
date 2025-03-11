## What is ri?
* **R**uby **I**ndex
* Access ruby documentation
* Press `q` for quit
* [Solution](https://stackoverflow.com/questions/6625631/nothing-known-about-when-trying-ri-stringupcase-ruby) for error `Nothing known about <...>`

## Examples
* `$ ri String` (documentation for `String` class)
* `$ ri String.upcase` (documentation for `.upcase` method in `String` class)
* `$ ri Array` (documentation for `Array` class)
* `$ ri length` (documentation for `.length` method in different classes)

## What is RDoc?
* **R**uby **Doc**umentation
* https://github.com/ruby/rdoc
* https://www.rubydoc.info/stdlib
* _stdlib_ - standard library
* `::class_method_name` - for class methods
* `#instance_method_name` - for instance methods

## Install rdoc
* `$ gem install rdoc`

## How to write your own documentation?
* Just leave comments above the thing you want to comment :)
* To generate a documentation, run in terminal: `$ rdoc filename.rb`
