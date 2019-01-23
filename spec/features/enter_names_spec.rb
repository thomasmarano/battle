feature "Enter names" do
  scenario "submitting names" do
    visit ("/")
    fill_in("player1_name", with: "thomas")
    fill_in("player2_name", with: "freddie")
    click_on("submit")
    expect(page).to have_content("thomas vs freddie")
  end
end
