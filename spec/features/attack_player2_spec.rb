feature 'Attack Player 2' do
    scenario 'can attack player 2 and receive confirmation' do
        sign_in_and_play
        click_on("Attack Player 2")
        expect(page).to have_content("You have attacked Freddie!")
    end
end
