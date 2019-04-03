feature 'Attacking' do
  scenario 'attack and get confirmation' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "Deanna attacked Madison"
  end

  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).not_to have_content 'Madison: 60HP'
    expect(page).to have_content 'Madison: 50HP'
  end
end
