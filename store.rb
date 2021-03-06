require 'yaml/store'

module Store
  class Storage

    def initialize (filename)
        @store = YAML::Store.new(filename+'_store.yaml')
    end

    def save_key (section, obj)
      @store.transaction { @store[section]=obj }
    end

    def get_key (section)
      return @store.transaction{ @store[section] }
    end
    
    def find_by_key (section, key)
      store_key=@store.transaction{ @store[section] }
      return store_key.each  {|x|  return x if x.has_key?(key) }
    end

  end  

end

