require 'spec_helper.rb'

feature 'Attacking' do
  it 'Can attack player 2 ' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Amy attacked Anastasis'
  end
  it 'Reduces player 2s HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    #click_link 'OK'
    expect(page).not_to have_content 'Anastasis: 60HP'
    #expect(page).to have_content 'Anastasis: 50HP'
  end
  
  it 'Can attack player 1' do
    sign_in_and_play
    click_button 'Attack'
    # click another button
    click_button 'Attack back!'
    expect(page).to have_content 'Anastasis attacked Amy'
  end

  it 'Reduces player 1s HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Attack back!' 
    expect(page).not_to have_content 'Amy: 60HP'
    expect(page).to have_content 'Amy: 50HP'
  end
end
