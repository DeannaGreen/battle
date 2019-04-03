feature 'Game Over' do
  context 'when Player 1 reaches 0 HP first' do
    before do
      sign_in_and_play
      10.times do
        click_button 'Attack'
      end
    end

    scenario 'Player 2 loses' do
      click_button 'Attack'
      expect(page).to have_content 'Madison loses!'
    end
  end
end
