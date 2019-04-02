feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Deanna'
    fill_in :player_2_name, with: 'Madison'
    click_button 'Submit'
    expect(page).to have_content 'Deanna vs. Madison'
  end
end
