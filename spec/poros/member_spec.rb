require 'rails_helper'

RSpec.describe Member do
  it 'exists' do
    attr = {
      name: 'Juan',
      role: 'Juanderful Person',
      party: 'Fiesta',
      district: 'Red Green'
    }

    member = Member.new(attr)

    expect(member).to be_a(Member)
    expect(member.name).to eq('Juan')
    expect(member.role).to eq('Juanderful Person')
    expect(member.party).to eq('Fiesta')
    expect(member.district).to eq('Red Green')
  end
end
