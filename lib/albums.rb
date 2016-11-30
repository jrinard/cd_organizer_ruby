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



end
