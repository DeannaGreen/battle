feature 'Player Hit Points' do
  scenario 'shows other player hit points' do
    sign_in_and_play
    expect(page).to have_content 'Madison: 60HP'
  end

  scenario 'shows Player 1 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Deanna: 60HP'
  end
end
