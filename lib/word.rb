class Word
  @@words = []

  define_method(:initialize) do |word|
    @word = word
    @id = @@words.length().+(1)
    @definations = []
  end
 #calls a spesific  method on an object
  define_method(:id) do
    @id
  end
#calls a spesific  method  on an object
    define_method(:word) do
      @word
    end
#calls a spesific  method  on an object
    define_method(:definations) do
      @definations
    end
#calls  method  on the entire class
    define_singleton_method(:all) do
      @@words
    end
#calls a spesific  method  on an object
    define_method(:save) do
      @@words.push(self)
    end
#calls  method  on the entire class
    define_singleton_method(:clear) do
      @@words = []
    end
#calls  method  on the entire class to find word by id
    define_singleton_method(:find) do |identification|
      found_word = nil
      @@words.each() do |word|
      if word.id().eql?(identification.to_i())
        found_word = word
      end
    end
      found_word
  end
#calls  method   that adds a defination 
define_method(:add_defination) do |defination|
  @definations.push(defination)
end

end
