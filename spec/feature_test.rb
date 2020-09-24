require './spec_helper.rb'

feature 'check homepage' do
  it 'checks that it says "Testing infrastructure working!"' do
    visit('/') #it visits the localhost url
    expect(page).to have_content 'Testing infrastructure working!'
  end
end

feature 'enter names' do
  it 'submitting names' do
    visit('/names')
    fill_in :player_1_name, with: 'Amy'
    fill_in :player_2_name, with: 'Anastasis'
    click_button 'Submit'
    expect(page).to have_content 'Amy vs. Anastasis'
  end
end
