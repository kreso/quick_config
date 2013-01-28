require "quick_config/version.rb"

module QuickConfig
  extend self

  def property(name, value=nil)        
    unless name_is_valid?(name)
      raise "Property name invalid or not provided" 
    end

    attr_accessor name

    define_method name do
      value ? self.send("#{name}=", value) : instance_variable_get("@#{name}")
    end
  end

  def set(&conf)
    instance_eval(&conf)
  end

  private

  def name_is_valid?(name)
    !name.nil? \
    && (name.is_a?(Symbol) || name.is_a?(String)) \
    && !name.to_s().match(/^[a-zA-Z_]+[0-9a-zA-Z_]+$/).nil?
  end
end
