require('spec_helper')

describe(Stylist) do
  describe('#stylist_name') do
    it('returns name of stylist') do
      new_stylist = Stylist.new({ :stylist_name => 'Ruby', :client_id => 4 })
      expect(new_stylist.stylist_name()).to(eq('Ruby'))
    end
  end


  describe(".all") do
    it("is empty at first") do
      expect(Stylist.all()).to(eq([]))
    end
  end



end
