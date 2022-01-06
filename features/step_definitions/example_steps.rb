Given(/^I am on the homepage$/) do
    
  find('h1', :text => "Welcome to MyRapName.com")
  
end
Then(/^Should have the text input field for firstname$/) do
  page.has_field?('firstname', type: 'text')

end

Then(/^Should have the text input field for lastInitial$/) do
  page.has_field?('lastinitial', type: 'text')
  # This is a console.log
  # binding.pry
end

Then(/^Should have checkbox input field$/) do
    page.has_field?('shorten', type: 'checkbox')
end

Then(/^Should have a Suggest Male Rap Name button$/) do
    page.has_field?('Male', type: 'submit')
end

Then(/^Should have a Suggest Female Rap Name button$/) do
    page.has_field?('Female', type: 'submit')
end

Then(/^Should have no content in the firstname text input/) do
  find_field('firstname')
  has_no_text?(:any, 'hi there')
end

Then(/^Should have no content in the last initial text input/) do
  find_field('lastinitial')
  has_no_text?(:any, 'hi there')
end

Then(/^Should add content to the firstname feild/) do
  fill_in('firstname', with: 'Jimbo')
  has_text?(:any, 'Jimbo')
end

Then(/^Should add content to the last initial feild/) do
  fill_in('lastinitial', with: 'B')
  has_text?(:any, 'B')
end

Then(/^Should request a male rap name/) do
  click_button('Male')
  page.all(:xpath, './/html/body/table/tbody/tr/td/table/tbody/tr/td/div/table/tbody/tr')
  # page.assert_selector('tr', count: 2)
end



