require('rspec')
require('defination')#requires from the defination.rb file
#clears defination input
describe('Defination') do
  before() do
    Defination.clear()
  end
   #spec  test that is passed in the rb file for defination
  describe('#defination')
  it("returns the defination ") do
    test_defination = Defination.new("capital city of kenya")
    expect(test_defination.defination()).to(eq("capital city of kenya"))
  end
end
#spec  test that is passed in the rb file for identification of a spesific defination
describe('#id') do
  it("returns the id ") do \
    test_defination = Defination.new("capital city")
    expect(test_defination.id()).to(eq(1))
  end
end


#spec  test that is passed in the rb file for saving a spesific defination
 describe("#save") do
   it("adds a defination to the array of saved definations") do
     test_defination = Defination.new("an animal")
     test_defination.save()
     expect(Defination.all()).to(eq([test_defination]))
   end
 end
#spec  test that is passed in the rb file for finding all definations of a word
 describe(".all") do
   it("its empty at first") do
     expect(Defination.all()).to(eq([]))
   end
 end

 describe(".clear") do
   it("empties all saved definations") do
     Defination.new("a cat family").save()
     Defination.clear()
     expect(Defination.all()).to(eq([]))
   end
 end

 describe(".find") do
  it("returns a defination by its id number") do
    test_defination = Defination.new("kenyan anthem")
    test_defination.save()
    test_defination2 = Defination.new("kenyan politician")
    test_defination2.save()
    expect(Defination.find(test_defination.id())).to(eq(test_defination))
    end
    end
 end
