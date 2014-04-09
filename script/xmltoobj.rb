RAILS_ROOT = "../"

require RAILS_ROOT + "/config/environment"
require 'ostruct' 

object_instance = OpenStruct.new( Hash.from_xml("<Person><name>Pawan</name></Person>") )
puts object_instance.Person.name