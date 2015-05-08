class Stylist
  attr_reader(:stylist_name, :client_id, :id)

  define_method(:initialize) do |attributes|
    @stylist_name = attributes.fetch(:stylist_name)
    if attributes.has_key?(:client_id)
      @client_id = attributes.fetch(:client_id)
    if attributes.has_key?(:id)
      @id = attributes.fetch(:id)
   end
  end

  define_singleton_method(:all) do
    stylists = []
    sql = "SELECT * FROM stylists"
    results = DB.exec(sql)
    results.each do |result|
      stylist_name = result.fetch('stylist_name')
      client_id = result.fetch('client_id')
      stylists.push(Stylist.new({ :stylist_name => stylist_name, :id => id, :client_id => client_id}))
    end
    stylists
  end
end


  define_method(:save) do
   sql = "INSERT INTO stylists (stylist_name, client_id) VALUES ('#{@stylist_name}', #{@client_id}) RETURNING id;"
   result = DB.exec(sql)
   @id = result.first().fetch("id").to_i()
 end

 define_singleton_method(:find) do |id|
  Stylist.all().each() do |stylist|
    if stylist.id() == id
      return stylist
    end
  end
end

end
