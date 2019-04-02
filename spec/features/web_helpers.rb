def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Deanna'
  fill_in :player_2_name, with: 'Madison'
  click_button 'Submit'
end
