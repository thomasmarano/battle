def sign_in_and_play
    visit '/'
    fill_in :player1_name, with: "Thomas"
    fill_in :player2_name, with: "Freddie"
    click_on("Submit")
end
