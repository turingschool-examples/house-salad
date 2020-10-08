require 'rails_helper'

RSpec.describe 'user can search for house members' do
  it 'user submits valid state name' do
    visit root_path

    select 'Colorado', from: :state
    click_button 'Locate Members of the House'

    expect(current_path).to eq(search_path)
    expect(page).to have_content('7 Results')
    expect(page).to have_css('.member', count: 7)

    within(first('.member')) do
      expect(page).to have_css('.name')
      name = find('.name').text
      expect(name).to_not be_empty

      expect(page).to have_css('.role')
      role = find('.role').text
      expect(role).to_not be_empty

      expect(page).to have_css('.party')
      party = find('.party').text
      expect(party).to_not be_empty

      expect(page).to have_css('.district')
      district = find('.district').text
      expect(district).to_not be_empty
    end
  end
end
