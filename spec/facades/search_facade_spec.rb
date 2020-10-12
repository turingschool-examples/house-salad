require 'rails_helper'

RSpec.describe 'Search Facade' do
  it 'returns a list of member objects for a given state', :vcr do
    state = 'CO'

    members = SearchFacade.fetch_member_data(state)

    expect(members).to be_an(Array)
    expect(members.first).to be_a(Member)
    expect(members.first.name).to be_a(String)
    # expect(members.first.name).to eq('Leslie Knope')
  end
end
