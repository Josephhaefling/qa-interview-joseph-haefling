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

Then(/^Should have checkbox input field$/)do

end

