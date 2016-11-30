class Albums
  @@albums = []

  define_method(:initialize) do |title|
    @title = title
  end

  define_method(:title) do
    @title
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



end
