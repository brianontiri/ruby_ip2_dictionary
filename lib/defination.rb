class Defination
  @@definations = []

  define_method(:initialize) do |defination|
    @defination = defination
    @id = @@definations.length().+(1)

  end
   #calls to the specifically  method defination
  define_method(:defination) do
    @defination
  end
 #calls to the specifically methods id
  define_method(:id) do
    @id
  end

 #calls to the entire class Defination

  define_singleton_method(:all) do
    @@definations
  end
 #calls to the specifically  method save
  define_method(:save) do
    @@definations.push(self)
  end
 #calls to the entier class   by method clear
  define_singleton_method(:clear) do
    @@definations = []
  end
 #calls to the entier class   by method find
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
