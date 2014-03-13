Given(/^a user named "(.*?)" signs up$/) do |user|
  pending # express the regexp above with the code you wish you had
end

When(/^I click "(.*?)"$/) do |profileurl|
  visit(profileurl)
end

When(/^I am redirected to my profile page at "(.*?)"$/) do |profileurl|
  visit(profileurl)
end

Then(/^the URL will display as "(.*?)"$/) do |prettyurl|
  page.current_path.should == prettyurl
end
