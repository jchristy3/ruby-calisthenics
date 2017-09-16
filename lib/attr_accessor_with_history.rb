class Class
  attr_reader :attr_name # create the attribute's getter
  attr_writer :attr_name
  attr_reader :attr_name_history
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s # make sure it's a string
    @attr_name_history += @attr_name
    @attr_name = attr_name
  end
  N = 0
  def attr_name_history+=(value)
    @attr_name_history[N] = value
    N += 1
  end
    class_eval %Q{
      
    }
  end
end
