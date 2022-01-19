# Structs
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482656#search) is the link to the video.

# Struct - mini class with only instance variables
# Example of usage: `class_name` = Struct.new(<names of instance variables>)

module AppStore
  # Now we can use App as a class, e.g. `App.new(...)`
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
    reset(username, password)
    @production_number = generate_production_number
  end

  def to_s
    "Gadget #{production_number} has the username #{username}. It is made from the #{self.class} class and it has the id #{object_id}"
  end

  def password=(new_password)
    @password = new_password if validate_password(new_password)
  end

  def reset(username, password)
    # calling an instance methods (for setters you need to append `self.` at the beginning)
    self.username = username
    self.password = password
    self.apps = []
  end

  def install_app(name)
    app = AppStore.find_app(name)
    @apps << app unless @apps.include?(app)
  end

  def delete_app(name)
    app = apps.find { |installed_app| installed_app.name == name }
    apps.delete(app) if app
  end

  private

  attr_writer :apps

  def generate_production_number
    "#{("a".."z").to_a.sample}-#{rand(1..999)}"
  end

  def validate_password(password)
    password.is_a?(String) && password.length >= 6 && password =~ /\d/
  end
end

phone = Gadget.new(username: "sviat", password: "password")

phone.apps #=> []
phone.install_app("Chat")
phone.install_app("Twitter")
phone.apps #=> [#<struct AppStore::App name="Chat", developer="Facebook", version=2.0>, #<struct AppStore::App name="Twitter", developer="Twitter", version=5.8>]
phone.delete_app("Chat")
phone.apps #=> [#<struct AppStore::App name="Twitter", developer="Twitter", version=5.8>]
