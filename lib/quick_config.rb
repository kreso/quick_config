require "quick_config/version"

module QuickConfig
  extend self

  def property(name, value=nil)        
    unless is_name_valid?(name)
      raise "Property name invalid or not provided. Use symbols for property names." 
    end

    attr_accessor name

    define_method name do
      value ? self.send("#{name}=", value) : instance_variable_get("@#{name}")
    end
  end

  def method(name, body=nil)        
    unless is_name_valid?(name)
      raise "Method name invalid or not provided. Use symbols for method names." 
    end

    define_method name do
      instance_eval(body)
    end
  end

  def config(&conf)
    instance_eval(&conf)
  end

  private

  def is_name_valid?(name)
    !name.nil? \
    && (name.is_a?(Symbol) || name.is_a?(String)) \
    && !name.to_s().match(/^[a-zA-Z_]+[0-9a-zA-Z_]+$/).nil?
  end
end
