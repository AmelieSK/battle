require './spec_helper.rb'

feature ' Attacking 'do
  it 'Can attack player 2 ' do
      sign_in_and_play
      click_button 'Attack'
      expect(page).to have_content 'Amy attacked Anastasis'
  end
  it 'reduces player 2s HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    click_link 'OK'
    expect(page).not_to have_content 'Anastasis: 60HP'
    expect(page).to have_content 'Anastasis: 50HP'
  end
end
