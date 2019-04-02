feature 'Can attack other player' do
  scenario 'attack and get confirmation' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "Deanna attacked Madison"
  end
end
