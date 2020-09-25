require './spec_helper.rb'

feature ' Attacking 'do
  it 'Can attack player 2 ' do
      sign_in_and_play
      click_button 'Attack'
      expect(page).to have_content 'Amy attacked Anastasis'
  end
end
