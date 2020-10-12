class Member
  attr_reader :name, :role, :party, :district

  def initialize(attr)
    @name = attr[:name]
    @role = attr[:role]
    @party = attr[:party]
    @district = attr[:district]
  end
end
