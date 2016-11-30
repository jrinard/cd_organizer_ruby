require('rspec')
require('artists')
require('albums')

describe(Albums) do
  before() do
    Albums.clear()
  end

  describe('#title') do
    it("returns the name of the album") do
      test_album = Albums.new("the score")
      expect(test_album.title()).to(eq("the score"))
    end
  end

  describe(".all") do
  it("is empty at first") do
    expect(Albums.all()).to(eq([]))
  end
end

  describe('#save') do
    it("pushes album into the albums array") do
      test_album = Albums.new("the score")
      test_album.save()
      expect(Albums.all()).to(eq([test_album]))
    end
  end

  describe("#id") do
  it("returns the id of the album") do
    test_album = Albums.new("the score")
    test_album.save()
    expect(test_album.id()).to(eq(1))
  end
end



end
