feature "homepage" do

  scenario "shows list of bookmarks" do
  	Link.create(url: "https://github.com", title: :Github)
  	visit '/'
  	expect(page).to have_content("Bookmarks:") and have_link("Github")
  end
end
