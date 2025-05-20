# Notes:
#   * When a new class is created, an object of type Class is initialized and assigned to a global constant (Gadget in this case)

class Gadget
  # Body of the class
end

Gadget.ancestors #=> [Gadget, Object, JSON::Ext::Generator::GeneratorMethods::Object, PP::ObjectMixin, Kernel, BasicObject]

phone = Gadget.new      #=> #<Gadget:0x00007f80ef0d5c60>
laptop = Gadget.new     #=> #<Gadget:0x00007f80f006e398>
microwave = Gadget.new  #=> #<Gadget:0x00007f80ef87f498>

phone.class     #=> Gadget
laptop.class    #=> Gadget
microwave.class #=> Gadget

phone.is_a?(Gadget)       #=> true
phone.is_a?(Object)       #=> true
phone.is_a?(BasicObject)  #=> true

phone.methods
# OUTPUT:
#   [:to_yaml,
#    :to_json,
#    :pretty_print_inspect,
#    :pretty_print_cycle,
#    :pretty_print,
#    :pretty_print_instance_variables,
#    :singleton_class,
#    :dup,
#    :itself,
#    :methods,
#    :singleton_methods,
#    :protected_methods,
#    :private_methods,
#    :public_methods,
#    :instance_variables,
#    :instance_variable_get,
#    :instance_variable_set,
#    :instance_variable_defined?,
#    :remove_instance_variable,
#    :instance_of?,
#    :kind_of?,
#    :is_a?,
#    :display,
#    :frozen?,
#    :class,
#    :yield_self,
#    :then,
#    :tap,
#    :Namespace,
#    :public_send,
#    :extend,
#    :clone,
#    :<=>,
#    :===,
#    :!~,
#    :nil?,
#    :method,
#    :public_method,
#    :eql?,
#    :respond_to?,
#    :singleton_method,
#    :define_singleton_method,
#    :TypeName,
#    :hash,
#    :freeze,
#    :inspect,
#    :object_id,
#    :send,
#    :to_s,
#    :to_enum,
#    :enum_for,
#    :pretty_inspect,
#    :equal?,
#    :!,
#    :__send__,
#    :==,
#    :!=,
#    :__id__,
#    :instance_eval,
#    :instance_exec]
