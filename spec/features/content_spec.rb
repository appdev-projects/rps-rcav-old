require "rails_helper"

describe "/" do
  it "has a top-level heading", points: 1 do
    visit "/"

    expect(page).to have_selector("h1", text: /Welcome/i)
  end
end

describe "/" do
  it "has an unordered list with three items", points: 1 do
    visit "/"

    expect(page).to have_tag("ul") do
      with_tag("li", count: 3)
    end
  end
end

describe "/" do
  it "has a link to Wikipedia", points: 1 do
    visit "/"

    expect(page).to have_link("Wikipedia", href: "https://en.wikipedia.org/wiki/Rock–paper–scissors")
  end
end

describe "/" do
  it "has some paragraphs", points: 1 do
    visit "/"

    expect(page).to have_selector("p", minimum: 3)
  end
end

describe "/" do
  it "has a table", points: 1 do
    visit "/"

    expect(page).to have_selector("table")
  end
end

describe "/" do
  it "has a working link to play rock" do
    visit "/"

    click_on "Play Rock"

    expect(page).to have_content("We played rock!")
    expect(page).to_not have_content("We played paper!")
    expect(page).to_not have_content("We played scissors!")
  end
end

describe "/" do
  it "has a working link to play paper" do
    visit "/"

    click_on "Play Paper"

    expect(page).to have_content("We played paper!")
    expect(page).to_not have_content("We played rock!")
    expect(page).to_not have_content("We played scissors!")
  end
end

describe "/" do
  it "has a working link to play scissors" do
    visit "/"

    click_on "Play Scissors"

    expect(page).to have_content("We played scissors!")
    expect(page).to_not have_content("We played paper!")
    expect(page).to_not have_content("We played rock!")
  end
end

describe "/" do
  it "has a table with five rows", points: 1 do
    visit "/"

    expect(page).to have_tag("table") do
      with_tag("tr", count: 5)
    end
  end
end

describe "/" do
  it "has a table with the correct number of cells in the first row" do
    visit "/"

    expect(page).to have_tag("table") do
      with_tag("tr:first-child") do
        with_tag("td", count: 2)
      end
    end
  end
end

describe "/" do
  it "has a table with the first row's cells sized correctly" do
    visit "/"

    expect(page).to have_tag("table") do
      with_tag("tr:first-child") do
        with_tag("td[colspan='2']")

        with_tag("td[colspan='3']")
      end
    end
  end
end

describe "/" do
  it "has a table with the correct number of cells in the second row" do
    visit "/"

    expect(page).to have_tag("table") do
      with_tag("tr:first-child") do
        with_tag("td[rowspan='2']")
      end

      with_tag("tr:nth-child(2)") do
        with_tag("td", count: 3)
      end
    end
  end
end

describe "/" do
  it "has a table with the correct number of cells in the third row" do
    visit "/"

    expect(page).to have_tag("table") do
      with_tag("tr:nth-child(3)") do
        with_tag("td", count: 5)
      end
    end
  end
end

describe "/" do
  it "has a table with the correct number of cells in the fourth row" do
    visit "/"

    expect(page).to have_tag("table") do
      with_tag("tr:nth-child(3)") do
        with_tag("td[rowspan='3']")
      end

      with_tag("tr:nth-child(4)") do
        with_tag("td", count: 4)
      end
    end
  end
end

describe "/" do
  it "has a table with the correct number of cells in the fifth row" do
    visit "/"

    expect(page).to have_tag("table") do
      with_tag("tr:nth-child(3)") do
        with_tag("td[rowspan='3']")
      end

      with_tag("tr:nth-child(5)") do
        with_tag("td", count: 4)
      end
    end
  end
end

describe "/rock" do
  it "has the correct content" do
    visit "/rock"

    expect(page).to have_content("We played rock!")
    expect(page).to_not have_content("We played paper!")
    expect(page).to_not have_content("We played scissors!")
  end
end

describe "/rock" do
  it "has a link to the homepage", points: 1 do
    visit "/rock"

    click_on "Rules"

    expect(page).to have_current_path("/").or have_current_path(/\/index/)
  end
end

describe "/rock" do
  it "has a working link to play rock" do
    visit "/rock"

    click_on "Play Rock"

    expect(page).to have_content("We played rock!")
    expect(page).to_not have_content("We played paper!")
    expect(page).to_not have_content("We played scissors!")
  end
end

describe "/rock" do
  it "has a working link to play paper" do
    visit "/rock"

    click_on "Play Paper"

    expect(page).to have_content("We played paper!")
    expect(page).to_not have_content("We played rock!")
    expect(page).to_not have_content("We played scissors!")
  end
end

describe "/rock" do
  it "has a working link to play scissors" do
    visit "/rock"

    click_on "Play Scissors"

    expect(page).to have_content("We played scissors!")
    expect(page).to_not have_content("We played paper!")
    expect(page).to_not have_content("We played rock!")
  end
end

describe "/paper" do
  it "has the correct content" do
    visit "/paper"

    expect(page).to have_content("We played paper!")
    expect(page).to_not have_content("We played rock!")
    expect(page).to_not have_content("We played scissors!")
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
  it "has a working link to play rock" do
    visit "/paper"

    click_on "Play Rock"

    expect(page).to have_content("We played rock!")
    expect(page).to_not have_content("We played paper!")
    expect(page).to_not have_content("We played scissors!")
  end
end

describe "/paper" do
  it "has a working link to play paper" do
    visit "/paper"

    click_on "Play Paper"

    expect(page).to have_content("We played paper!")
    expect(page).to_not have_content("We played rock!")
    expect(page).to_not have_content("We played scissors!")
  end
end


describe "/paper" do
  it "has a working link to play scissors" do
    visit "/paper"

    click_on "Play Scissors"

    expect(page).to have_content("We played scissors!")
    expect(page).to_not have_content("We played paper!")
    expect(page).to_not have_content("We played rock!")
  end
end

describe "/scissors" do
  it "has the correct content" do
    visit "/scissors"

    expect(page).to have_content("We played scissors!")
    expect(page).to_not have_content("We played paper!")
    expect(page).to_not have_content("We played rock!")
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
  it "has a working link to play rock" do
    visit "/scissors"

    click_on "Play Rock"

    expect(page).to have_content("We played rock!")
    expect(page).to_not have_content("We played paper!")
    expect(page).to_not have_content("We played scissors!")
  end
end

describe "/scissors" do
  it "has a working link to play paper" do
    visit "/scissors"

    click_on "Play Paper"

    expect(page).to have_content("We played paper!")
    expect(page).to_not have_content("We played rock!")
    expect(page).to_not have_content("We played scissors!")
  end
end

describe "/scissors" do
  it "has a working link to play scissors" do
    visit "/scissors"

    click_on "Play Scissors"

    expect(page).to have_content("We played scissors!")
    expect(page).to_not have_content("We played paper!")
    expect(page).to_not have_content("We played rock!")
  end
end
