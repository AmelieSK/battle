require './spec_helper.rb'

  feature 'Hit points ' do
    it 'Can see the hit points of the apponent ' do
    sign_in_and_play
    expect(page).to have_content 'Anastasis: 60HP'
  end

end
