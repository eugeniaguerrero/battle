feature 'Testing player names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content("Alfred vs. Pesto")
 end
end

feature "Viewing hit points" do
  scenario "viewing Player 1's hit points" do
    sign_in_and_play
    expect(page).to have_content("Alfred: 100HP")
  end
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
    expect(page).to have_content("Pesto: 90HP")
  end
end

feature "Losing" do
  scenario "player 2 loses" do
    sign_in_and_play
    18.times {click_button "Attack!"
    click_button "Back"}
    click_button "Attack!"
    expect(page).to have_content("Pesto has lost :(")
  end
end
