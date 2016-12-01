require('rspec')
require('artists')
require('albums')

describe(Artists) do
  before() do
    Artists.clear()
  end

  describe('#name') do
    it("returns the name of the artist") do
      test_art = Artists.new("Bob")
      expect(test_art.name()).to(eq("Bob"))
    end
  end

  describe('#id') do
    it("returns the id of the artist") do
      test_art = Artists.new("Bob")
      expect(test_art.id()).to(eq(1))
    end
  end

  describe('#cd') do
  it("initially returns an empty array of cd for the artist") do
    test_art = Artists.new("Bob")
    expect(test_art.cd()).to(eq([]))
  end
end

describe("#save") do
  it("adds a album to the array of saved artist") do
    test_art = Artists.new("Bob")
    test_art.save()
    expect(Artists.all()).to(eq([test_art]))
  end
end

describe(".all") do
  it("is empty at first") do
    expect(Artists.all()).to(eq([]))
  end
end

describe(".clear") do
  it("empties out all of the saved Artists") do
    Artists.new("Bob").save()
    Artists.clear()
    expect(Artists.all()).to(eq([]))
  end
end

describe(".find") do
  it("returns a artist by its id number") do
    test_art = Artists.new("Bob")
    test_art.save()
    test_art2 = Artists.new("Jane")
    test_art2.save()
    expect(Artists.find(test_art.id())).to(eq(test_art))
  end
end


describe("#add_cd") do
  it('adds a new vehicle to the dealership') do
    test_art = Artists.new("Getro")
    test_cd = Albums.new("source")
    test_art.add_cd(test_cd)
    expect(test_art.cd()).to(eq([test_cd]))
  end
end

end
