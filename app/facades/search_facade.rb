class SearchFacade
  def self.fetch_member_data(state)
    response = GovernmentService.members_of_house(state)

    response[:results].map do |member_data|
      Member.new(member_data)
    end
  end
end
