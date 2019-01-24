feature 'player 2 attacks player 1' do
  scenario 'turn switches and player 2 can attack' do
      sign_in_and_play
      click_on("Attack Player 2")
      click_on("Attack Player 1")
      expect(page).to have_content("You have attacked Thomas!")
  end
end
