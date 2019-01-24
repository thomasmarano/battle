feature "Player 2 Hit Points" do
    scenario "check what player 2 hit points are" do
        visit "/"
        fill_in :player1_name, with: "Thomas"
        fill_in :player2_name, with: "Freddie"
        click_on("submit")
        expect(page).to have_content("Freddie Hit Points: 100")
    end
end
