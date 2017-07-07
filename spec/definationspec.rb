require('rspec')
require('defination')#requires from the defination.rb file
#clears defination input 
describe('Defination') do
  before() do
    Defination.clear()
  end

  describe('#defination')
  it("returns the defination ") do
    test_defination = Defination.new("capital city of kenya")
    expect(test_defination.defination()).to(eq("capital city of kenya"))
  end
end

describe('#id') do
  it("returns the id ") do \
    test_defination = Defination.new("capital city")
    expect(test_defination.id()).to(eq(1))
  end
end

describe('#words') do
  it("initially returns an empty array of words ") do
    test_defination = Defination.new("capital city")
    expect(test_defination.words()).to(eq([]))
  end
end

 describe("#save") do
   it("adds a defination to the array of saved definations") do
     test_defination = Defination.new("an animal")
     test_defination.save()
     expect(Defination.all()).to(eq([test_defination]))
   end
 end

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
