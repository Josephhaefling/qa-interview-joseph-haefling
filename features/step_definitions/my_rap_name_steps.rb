Given(/^I am on the homepage$/) do
  assert_text(:visible, 'Welcome to MyRapName.com')
  
end
Then(/^It should have the text input field for "(.*?)"$/) do | type |
  if type == 'firstname'
    page.has_field?('firstname', type: 'text')
  elsif
    page.has_field?('lastinitial', type: 'text')
  end
end

Then(/^It should have checkbox input field$/) do
    page.has_field?('shorten', type: 'checkbox')
end

Then(/^It should have a selected checkbox input field$/) do
  has_unchecked_field?('shorten')
end

Then(/^It should have a Suggest "(.*?)" Rap Name button$/) do | type |
  if type == 'Male'
    page.has_field?('Male', type: 'submit')
  elsif
    page.has_field?('Female', type: 'submit')
  end
end

Then(/^It should have no content in the "(.*?)" text input/) do | type |
  if type == 'firstname' 
    find_field('firstname')
  elsif
    find_field('lastinitial')
  end
  has_no_text?(:any, 'hi there')
end

When(/^I add content to the firstname text input/) do
  fill_in('firstname', with: 'Jimbo')
end

Then(/^It should have content in the firstname field/) do
  has_text?(:any, 'Jimbo')
end

Then(/^It should have no rap name$/) do
    assert_selector(:xpath, './/html/body/table/tbody/tr/td/table/tbody/tr/td/div/table/tbody/tr', count: 0)
end 

Then(/^It should have one rap name/) do
  assert_selector(:xpath, './/html/body/table/tbody/tr/td/table/tbody/tr/td/div/table/tbody/tr', count: 1)
end

When(/^I input a new name firstname$/) do
    fill_in('firstname', with: 'Abby')
end

Then (/^It should have text in the firstname field$/) do
    has_text?(:any, 'Abby')
end

When(/^I add content to the last initial text input/) do
  fill_in('lastinitial', with: 'M')
end

Then(/^It should have content to the last initial feild/) do
  has_text?(:any, 'M')
end

When(/^I deselect the nickname checkbox$/) do
  page.uncheck('shorten')
end

Then(/^Nickname should be unselected$/) do
  has_unchecked_field?('shorten')
end

Then(/^It should have no female rap name$/) do
    assert_selector(:xpath, './/html/body/table/tbody/tr/td/table/tbody/tr/td/div/table/tbody/tr', count: 1)
end

Then(/^It should have two rap names$/) do
    assert_selector(:xpath, './/html/body/table/tbody/tr/td/table/tbody/tr/td/div/table/tbody/tr', count: 2)
end

When(/^I click request a "(.*?)" rap name$/) do | type | 
  if type == 'male' 
    click_button('Male')
  elsif
    click_button('Female')
  end
end

# This could be refactored to be more reusable
Then(/^It should have three rap names$/) do | type |
    assert_selector(:xpath, './/html/body/table/tbody/tr/td/table/tbody/tr/td/div/table/tbody/tr', count: 3)
end



