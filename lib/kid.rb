require_relative './dance_module.rb'
require_relative './class_methods_module.rb'
require_relative "fancy_dance.rb"

class Kid
include Dance
 #including dance module methods as instance methods
  attr_accessor :name
 extend MetaDancing
 #extend metadancing module into kids class


 extend FancyDance::ClassMethods
  include FancyDance::InstanceMethods

    def initialize(name)
    @name = name
    end
end