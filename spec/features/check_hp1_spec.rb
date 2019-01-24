feature "Player 2 Hit Points" do
    scenario "check what player 2 hit points are" do
        sign_in_and_play
        expect(page).to have_content("Freddie Hit Points: 60")
    end
end
