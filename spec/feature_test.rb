require './spec_helper.rb'

feature 'check homepage' do
  it 'checks that it says "Testing infrastructure working!"' do
    visit('/') #it visits the localhost url
    expect(page).to have_content 'Testing infrastructure working!'
  end
end

feature 'enter names' do
  it 'submitting names' do
  sign_in_and_play
    expect(page).to have_content 'Amy vs. Anastasis'
  end



#   As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points


end
