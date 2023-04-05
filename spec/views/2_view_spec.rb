require "rails_helper"

describe "movies/index" do
  it "uses an embedded Ruby link_to helper method", points: 2 do
    assign(:movies, [
      Movie.create(title: "My title", description: "My description"),
      Movie.create(title: "My title 2", description: "My description 2")
    ])

    p render

    expect(rendered).to match /<%= link_to "Show details", movie %>/
  end
end
