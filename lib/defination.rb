class Defination
  @@definatios = []

  define_method(:initialize) do |defination|
    @defination = defination
    @id = @@definations.length().+(1)
    @words = []
  end

  define_method(:defination) do
    @defination
  end

  define_method(:id) do
    @id
  end

  define_method(:words) do
    @words

  define_singleton_method(:all) do
    @@definations
  end

  define_singleton_method(:save) do
    @@definations.push(self)
  end

  define_singleton_method(:clear) do
    @@definations = []
  end

  define_singleton_method(:find) do
    found_defination = nil
    @@definations.each() do |defination|
      if defination.id().eql?(id)
        found_defination = defination
      end
    end
    found_defination
  end
end
  
