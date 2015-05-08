class Stylist
  attr_reader(:name, :id)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:stylist_name)
    @id = attributes.fetch(:id)
  end

  define_singleton_method(:all) do
    stylists = []
    sql = "SELECT * FROM stylists"
    results = DB.exec(sql)
    results.each do |result|
      stylist_name = result.fetch('stylist_name')
      id = result.fetch('id')
      stylists.push(Stylist.new({ :stylist_name => styist_name, :id => id}))
    end
    stylists
  end

  end

  define_method(:save) do

  end
