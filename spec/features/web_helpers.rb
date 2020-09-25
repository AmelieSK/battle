def sign_in_and_play
  visit('/names')
  fill_in :player_1_name, with: 'Amy'
  fill_in :player_2_name, with: 'Anastasis'
  click_button 'Submit'
end
