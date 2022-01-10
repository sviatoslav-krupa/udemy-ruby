# Create A Class
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482606#search) is the link to the video.

class Gadget; end

Gadget.ancestors #=> [Gadget, Object, PP::ObjectMixin, Kernel, BasicObject]

phone = Gadget.new #=> #<Gadget:0x00007f80ef0d5c60>
laptop = Gadget.new #=> #<Gadget:0x00007f80f006e398>
microwave = Gadget.new #=> #<Gadget:0x00007f80ef87f498>

phone.class #=> Gadget
laptop.class #=> Gadget
microwave.class #=> Gadget

phone.is_a?(Gadget) #=> true
phone.is_a?(Object) #=> true
phone.is_a?(BasicObject) #=> true

phone.methods
=begin
[:pretty_print_cycle,
 :pretty_print,
 :pretty_print_inspect,
 :pretty_print_instance_variables,
 :taint,
 :tainted?,
 :untaint,
 :untrust,
 :untrusted?,
 :trust,
 :methods,
 :singleton_methods,
 :protected_methods,
 :private_methods,
 :public_methods,
 :instance_variables,
 :instance_variable_get,
 :instance_variable_set,
 :instance_variable_defined?,
 :remove_instance_variable,
 :instance_of?,
 :kind_of?,
 :is_a?,
 :method,
 :public_method,
 :public_send,
 :singleton_method,
 :define_singleton_method,
 :extend,
 :pretty_inspect,
 :clone,
 :to_enum,
 :enum_for,
 :<=>,
 :===,
 :=~,
 :!~,
 :nil?,
 :eql?,
 :respond_to?,
 :freeze,
 :inspect,
 :object_id,
 :send,
 :to_s,
 :display,
 :class,
 :frozen?,
 :tap,
 :then,
 :yield_self,
 :hash,
 :singleton_class,
 :dup,
 :itself,
 :!,
 :==,
 :!=,
 :__id__,
 :equal?,
 :instance_eval,
 :instance_exec,
 :__send__]
=end
