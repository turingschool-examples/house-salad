require 'rails_helper'

RSpec.describe GovernmentService do
  it 'fetch member data by state', :vcr do
    search_results = GovernmentService.members_of_house('CO')

    expect(search_results).to be_a(Hash)
    expect(search_results).to have_key :results

    results = search_results[:results]
    expect(results).to be_an(Array)

    next_result = results.first

    expect(next_result).to have_key :name
    expect(next_result[:name]).to be_a(String)

    expect(next_result).to have_key :role
    expect(next_result[:role]).to be_a(String)

    expect(next_result).to have_key :district
    expect(next_result[:district]).to be_a(String)

    expect(next_result).to have_key :party
    expect(next_result[:party]).to be_a(String)
  end
end
