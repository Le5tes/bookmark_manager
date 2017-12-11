feature "create links" do 
  scenario "user adds a link" do
  	visit '/newlink'
  	fill_in('title', with: 'Makers')
  	fill_in('url', with: 'www.makersacademy.com')
  	click_button('Add!')
  	within 'ul#links' do 
  	  expect(page).to have_link("Makers")
 	end
  end
end