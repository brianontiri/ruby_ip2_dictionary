require('rspec')
require('word')
require('defination')


describe('Word') do
  before() do
    Word.clear()
  end

     describe("#word") do
      it("returns the word inputed to the word") do
      test_word = Word.new("dog")
      expect(test_word.word()).to(eq("dog"))
     end
  end

  describe('#definations') do
    it("initially returns an empty array of definations to the word ") do
      test_word = Word.new("capital")
      expect(test_word.definations()).to(eq([]))
    end
  end

       describe(".all") do
       it("is empty at first") do
        expect(Word.all()).to(eq([]))
      end
    end

        describe("#save") do
         it("adds a word to array of save words") do
          test_word = Word.new("dog")
          test_word.save()
          expect(Word.all()).to(eq([test_word]))
         end
    end

        describe(".clear") do
          it("empties out all of the saved words") do
           Word.new("dog").save()
           Word.clear()
           expect(Word.all()).to(eq([]))
         end
      end

      describe("#id") do
        it("returns the id of the word") do
          test_word = Word.new("dog")
          test_word.save()
          expect(test_word.id()).to(eq(1))
      end
    end

    describe(".find") do
      it("returns the word by its id number") do
        test_word = Word.new("dog")
        test_word.save()
        test_word2 = Word.new("spider")
        test_word2.save()
        expect(Word.find(test_word.id())).to(eq(test_word))
    end
  end
  describe('#add_defination') do
        it("adds a new defination to a word") do
          test_word = Word.new("Bob")
          test_defination = Defination.new("kenyan boy")
          test_word.add_defination(test_defination)
          expect(test_word.definations()).to(eq([test_defination]))
        end
      end


end
