require "active_support/concern" # needed to use `included do ... end`

module Example
  extend ActiveSupport::Concern # needed to use `included do ... end`

  class << self
    attr_reader :includers
  end

  # calls each time when a class includes this module (by Ruby)
  def self.included(base = nil, &block)
    @includers ||= []
    @includers << base if base
    super # calls the original `included` method below
  end

  # calls each time when a class includes this module (by ActiveSupport::Concern)
  included do
    p "included"
  end

  def hello
    p "hello"
  end
end

class A
  include Example
end

class B
  include Example
end

ObjectSpace.each_object(Class).select { |klass| klass.included_modules.include?(Example) } #=> [B, A]

Example.includers #=> [A, B]
# OUTPUT:
#   "included"
#   "included"
