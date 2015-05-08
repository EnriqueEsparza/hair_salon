require('spec_helper')

describe(Stylist) do
  describe('#stylist_name') do
    it('returns name of stylist') do
      new_stylist = Stylist.new({ :stylist_name => 'Ruby', :client_id => 4 })
      expect(new_stylist.stylist_name()).to(eq('Ruby'))
    end
  end

  describe('#client_id') do
    it('returns client id') do
      new_stylist = Stylist.new({ :stylist_name => 'Ruby', :client_id => 4 })
      expect(new_stylist.client_id()).to(eq(4))
    end
  end

  describe('#id') do
  it('returns the database-assigned id of the stylist') do
    new_stylist = Stylist.new({ :stylist_name => 'Ruby', :client_id => 4, :id => nil })
    new_stylist.save()
    expect(new_stylist.id()).to(be_an_instance_of(Fixnum))
  end
end

  describe('.all') do
    it('returns all stylist in the salon') do
      new_stylist = Stylist.new({ :stylist_name => 'Ruby', :client_id => 4, :id => nil })
      new_stylist.save()
    expect(Stylist.all().length()).to(eq(1))
    end
  end
  
  describe("#save") do
   it("lets you save stylist names to the stylists database") do
     new_stylist = Stylist.new({ :stylist_name => 'Ruby', :client_id => 4, :id => nil })
     new_stylist.save()
     expect(Stylist.all()).to(eq([new_stylist]))
   end
 end

 describe("#==") do
   it("is the same list if it has the same name") do
     new_stylist1 = Stylist.new({ :stylist_name => 'Ruby', :client_id => 4, :id => nil })
     new_stylist2 = Stylist.new({ :stylist_name => 'Ruby', :client_id => 4, :id => nil })
     expect(new_stylist1).to(eq(new_stylist2))
   end
 end

 describe('.find') do
  it("returns book by id") do
    new_stylist = Stylist.new({ :stylist_name => 'Ruby', :client_id => 4 })
    new_stylist.save()
    id = new_stylist.id()
    found_stylist = Stylist.find(id)
    expect(found_stylist.id).to(eq(new_stylist.id))
  end
end



end
