require "rails_helper"

describe "root URL" do
  it "has a functional RCAV", points: 5 do
    visit "/"

    expect(page.status_code).to be(200)
  end
end

describe "root URL" do
  it "has a link to play rock", points: 2 do
    visit "/"

    click_on "Play Rock"

    expect(page).to have_current_path("/rock")
  end
end

describe "root URL" do
  it "has a link to play paper", points: 2 do
    visit "/"

    click_on "Play Paper"

    expect(page).to have_current_path("/paper")
  end
end

describe "root URL" do
  it "has a link to play scissors", points: 2 do
    visit "/"

    click_on "Play Scissors"

    expect(page).to have_current_path("/scissors")
  end
end

describe "/rock" do
  it "has a functional RCAV", points: 4 do
    visit "/rock"

    expect(page.status_code).to be(200)
  end
end

describe "/rock" do
  it "has a link to the homepage", points: 2 do
    visit "/rock"

    click_on "Rules"

    expect(page).to have_current_path("/").or have_current_path(/\/index/)
  end
end

describe "/rock", points: 1 do
  it "has a link to play rock" do
    visit "/rock"

    click_on "Play Rock"

    expect(page).to have_current_path("/rock")
  end
end

describe "/rock", points: 1 do
  it "has a link to play paper" do
    visit "/rock"

    click_on "Play Paper"

    expect(page).to have_current_path("/paper")
  end
end

describe "/rock", points: 1 do
  it "has a link to play scissors" do
    visit "/rock"

    click_on "Play Scissors"

    expect(page).to have_current_path("/scissors")
  end
end

describe "/rock", points: 10 do
  it "has a random computer move", points: 10, hint: h("randomness") do
    computer_played_rock = 0
    computer_played_paper = 0
    computer_played_scissors = 0

    15.times do
      visit "/rock"

      if (page.has_content?("They played rock!") &&
        page.has_no_content?("They played paper!") &&
        page.has_no_content?("They played scissors!"))

        computer_played_rock = computer_played_rock + 1
      end

      if (page.has_content?("They played paper!") &&
        page.has_no_content?("They played rock!") &&
        page.has_no_content?("They played scissors!"))

        computer_played_paper = computer_played_paper + 1
      end

      if (page.has_content?("They played scissors!") &&
        page.has_no_content?("They played rock!") &&
        page.has_no_content?("They played paper!"))

        computer_played_scissors = computer_played_scissors + 1
      end
    end

    expect(computer_played_rock).to_not eq(0)
    expect(computer_played_paper).to_not eq(0)
    expect(computer_played_scissors).to_not eq(0)
  end
end

describe "/rock", points: 15 do
  it "displays the correct outcome" do
    visit "/rock"

    if page.has_content?("They played rock!")
      expect(page).to have_content("We tied!")
    end

    if page.has_content?("They played paper!")
      expect(page).to have_content("We lost!")
    end

    if page.has_content?("They played scissors!")
      expect(page).to have_content("We won!")
    end
  end
end

describe "/paper" do
  it "has a functional RCAV", points: 3 do
    visit "/paper"

    expect(page.status_code).to be(200)
  end
end

describe "/paper" do
  it "has a link to the homepage", points: 1 do
    visit "/paper"

    click_on "Rules"

    expect(page).to have_current_path("/").or have_current_path(/\/index/)
  end
end

describe "/paper" do
  it "has a link to play rock", points: 1 do
    visit "/paper"

    click_on "Play Rock"

    expect(page).to have_current_path("/rock")
  end
end

describe "/paper" do
  it "has a link to play paper", points: 1 do
    visit "/paper"

    click_on "Play Paper"

    expect(page).to have_current_path("/paper")
  end
end

describe "/paper" do
  it "has a link to play scissors", points: 1 do
    visit "/paper"

    click_on "Play Scissors"

    expect(page).to have_current_path("/scissors")
  end
end

describe "/paper" do
  it "has a random computer move", points: 8, hint: h("randomness") do
    computer_played_rock = 0
    computer_played_paper = 0
    computer_played_scissors = 0

    15.times do
      visit "/paper"

      if (page.has_content?("They played rock!") &&
        page.has_no_content?("They played paper!") &&
        page.has_no_content?("They played scissors!"))

        computer_played_rock = computer_played_rock + 1
      end

      if (page.has_content?("They played paper!") &&
        page.has_no_content?("They played rock!") &&
        page.has_no_content?("They played scissors!"))

        computer_played_paper = computer_played_paper + 1
      end

      if (page.has_content?("They played scissors!") &&
        page.has_no_content?("They played rock!") &&
        page.has_no_content?("They played paper!"))

        computer_played_scissors = computer_played_scissors + 1
      end
    end

    expect(computer_played_rock).to_not eq(0)
    expect(computer_played_paper).to_not eq(0)
    expect(computer_played_scissors).to_not eq(0)
  end
end

describe "/paper" do
  it "displays the correct outcome", points: 12 do
    visit "/paper"

    if page.has_content?("They played rock!")
      expect(page).to have_content("We won!")
    end

    if page.has_content?("They played paper!")
      expect(page).to have_content("We tied!")
    end

    if page.has_content?("They played scissors!")
      expect(page).to have_content("We lost!")
    end
  end
end

describe "/scissors" do
  it "has a functional RCAV", points: 2 do
    visit "/scissors"

    expect(page.status_code).to be(200)
  end
end

describe "/scissors" do
  it "has a link to the homepage", points: 1 do
    visit "/scissors"

    click_on "Rules"

    expect(page).to have_current_path("/").or have_current_path(/\/index/)
  end
end

describe "/scissors" do
  it "has a link to play rock", points: 1 do
    visit "/scissors"

    click_on "Play Rock"

    expect(page).to have_current_path("/rock")
  end
end

describe "/scissors" do
  it "has a link to play paper", points: 1 do
    visit "/scissors"

    click_on "Play Paper"

    expect(page).to have_current_path("/paper")
  end
end

describe "/scissors" do
  it "has a link to play scissors", points: 1 do
    visit "/scissors"

    click_on "Play Scissors"

    expect(page).to have_current_path("/scissors")
  end
end

describe "/scissors" do
  it "has a random computer move", points: 6, hint: h("randomness") do
    computer_played_rock = 0
    computer_played_paper = 0
    computer_played_scissors = 0

    15.times do
      visit "/scissors"

      if (page.has_content?("They played rock!") &&
        page.has_no_content?("They played paper!") &&
        page.has_no_content?("They played scissors!"))

        computer_played_rock = computer_played_rock + 1
      end

      if (page.has_content?("They played paper!") &&
        page.has_no_content?("They played rock!") &&
        page.has_no_content?("They played scissors!"))

        computer_played_paper = computer_played_paper + 1
      end

      if (page.has_content?("They played scissors!") &&
        page.has_no_content?("They played rock!") &&
        page.has_no_content?("They played paper!"))

        computer_played_scissors = computer_played_scissors + 1
      end
    end

    expect(computer_played_rock).to_not eq(0)
    expect(computer_played_paper).to_not eq(0)
    expect(computer_played_scissors).to_not eq(0)
  end
end

describe "/scissors" do
  it "displays the correct outcome", points: 9 do
    visit "/scissors"

    if page.has_content?("They played rock!")
      expect(page).to have_content("We lost!")
    end

    if page.has_content?("They played paper!")
      expect(page).to have_content("We won!")
    end

    if page.has_content?("They played scissors!")
      expect(page).to have_content("We tied!")
    end
  end
end
