feature 'Testing player names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content("Alfred vs. Pesto")
 end
end

feature "Viewing hit points" do
  scenario "viewing Player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content("Pesto: 100HP")
  end
end

feature "Attacking" do
  scenario "attack player 2" do
    sign_in_and_play
    click_button "Attack!"
    expect(page).to have_content("Attacked Pesto!")
  end
end

feature "Reduce opponent's HP" do
  scenario "reducing player 2's HP" do
    sign_in_and_play
    click_button "Attack!"
    expect("Pesto: 90HP")
  end
end
