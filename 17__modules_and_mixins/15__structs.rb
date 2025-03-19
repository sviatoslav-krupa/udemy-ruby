# Notes:
#   * Struct - mini class with only instance variables with getters and setters

# Syntax:
#   * `ClassName = Struct.new(:first_instance_variable, :second_instance_variable, ...)`
#   * Then: `ClassName.new()` to create a specific instance (as from regular class)

module AppStore
  App = Struct.new(:name, :developer, :version)

  APPS = [
    App.new("Chat", "Facebook", 2.0),
    App.new("Twitter", "Twitter", 5.8),
    App.new("Weather", "Yahoo", 10.15)
  ]

  def self.find_app(name)
    APPS.find { |app| app.name == name }
  end
end

class Gadget
  include AppStore

  attr_accessor :username, :password
  attr_reader :production_number, :apps

  def initialize(username:, password:)
    @username = username
    @password = password
    @apps = []
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
  end

  def install_app(name)
    app = AppStore.find_app(name)
    @apps << app unless @apps.include?(app)
  end

  def delete_app(name)
    app = apps.find { |installed_app| installed_app.name == name }
    apps.delete(app) if app
  end
end

phone = Gadget.new(username: "sviat", password: "password")

phone.apps #=> []

phone.install_app("Chat")
phone.install_app("Twitter")

phone.apps #=> [#<struct AppStore::App name="Chat", developer="Facebook", version=2.0>, #<struct AppStore::App name="Twitter", developer="Twitter", version=5.8>]

phone.delete_app("Chat")

phone.apps #=> [#<struct AppStore::App name="Twitter", developer="Twitter", version=5.8>]

twitter = phone.apps.first

twitter.name      #=> "Twitter"
twitter.developer #=> "Twitter"
twitter.version   #=> 5.8

twitter.version = 6.0

twitter.version #=> 6.0
