class Albums
  @@albums = []

  define_method(:initialize) do |title|
    @title = title
    @id = @@albums.length().+(1)
  end

  define_method(:title) do
    @title
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:all) do
      @@albums
    end

  define_method(:save) do
    @@albums.push(self)
  end


  define_singleton_method(:clear) do
    @@albums = []
  end

  # finding id in route which is identification and comparing it to the array length for vehicle
define_singleton_method(:find) do |identification|
  found_album = nil
  @@albums.each() do |album_temp|
    if album_temp.id().eql?(identification.to_i())
      found_album = album_temp
    end
  end
  found_album
end
end
