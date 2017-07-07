class Word
  @@words = []

  define_method(:initialize) do |word|
    @word = word

    define_method(:word) do
      @word
    end

    define_singleton_method(:all) do
      @@words
    end

    define_method(:save) do
      @@words.push(self)
    end

    define_singleton_method(:clear) do
      @@word = []
    end

    
