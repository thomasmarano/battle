feature 'Reducing Hit Points' do
    scenario "attack reduces player 2's hit points by 10" do
      sign_in_and_play
      click_on("Attack Player 2")
      expect(page).to have_content("Freddie's hit points now equal 50")
    end
end
