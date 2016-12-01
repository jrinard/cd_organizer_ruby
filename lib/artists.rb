class Artists
  @@artists = []

  define_method(:initialize) do |name|
    @name = name
    @cd = []
    @id = @@artists.length().+(1)
  end

  define_method(:name) do
    @name
  end

  define_method(:id) do
    @id
  end

  define_method(:cd) do
    @cd
  end

  define_singleton_method(:all) do
      @@artists
    end

  define_method(:save) do
    @@artists.push(self)
  end


  define_singleton_method(:clear) do
    @@artists = []
  end

  # finding id in route which is identification and comparing it to the array length for vehicle
define_singleton_method(:find) do |identification|
  found_artist = nil
  @@artists.each() do |artist|
    if artist.id().eql?(identification.to_i())
      found_artist = artist
    end
  end
  found_artist
end

  define_method(:add_cd) do |temp_cd|
    @cd.push(temp_cd)
  end

end
