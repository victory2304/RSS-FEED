# Multi-line step scoper

When /^(.*) within ([^:]+):$/ do |step, parent, table_or_string|
  with_scope(parent) { When "#{step}:", table_or_string }
end

Given /^(?:|I )am on (.+)$/ do |page_name|
  visit path_to(page_name)
end

When /^(?:|I )go to (.+)$/ do |page_name|
  visit path_to(page_name)
end

When /^(?:|I )press "([^"]*)"$/ do |button|
  click_button(button)
end

When /^(?:|I )follow "([^"]*)"$/ do |link|
  pending
end

When /^(?:|I )fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
  pending
end

When /^(?:|I )fill in "([^"]*)" for "([^"]*)"$/ do |value, field|
  pending
end

When /^(?:|I )fill in the following:$/ do |fields|
  pending
end

When /^(?:|I )select "([^"]*)" from "([^"]*)"$/ do |value, field|
  pending
end

When /^(?:|I )check "([^"]*)"$/ do |field|
  pending
end

When /^(?:|I )uncheck "([^"]*)"$/ do |field|
  pending
end

When /^(?:|I )choose "([^"]*)"$/ do |field|
  pending
end

When /^(?:|I )attach the file "([^"]*)" to "([^"]*)"$/ do |path, field|
  pending
end

Then /^(?:|I )should see "([^"]*)"$/ do |text|
   page.should have_content(text)
end

Then /^(?:|I )should see \/([^\/]*)\/$/ do |regexp|
  pending
end

Then /^(?:|I )should not see "([^"]*)"$/ do |text|
  pending
end

Then /^(?:|I )should not see \/([^\/]*)\/$/ do |regexp|
  pending
end

Then /^the "([^"]*)" field(?: within (.*))? should contain "([^"]*)"$/ do |field, parent, value|
  pending
end

Then /^the "([^"]*)" field(?: within (.*))? should not contain "([^"]*)"$/ do |field, parent, value|
  pending
end

Then /^the "([^"]*)" checkbox(?: within (.*))? should be checked$/ do |label, parent|
  pending
end

Then /^the "([^"]*)" checkbox(?: within (.*))? should not be checked$/ do |label, parent|
  pending
end

Then /^(?:|I )should be on (.+)$/ do |page_name|
  pending
end

Then /^(?:|I )should have the following query string:$/ do |expected_pairs|
  pending
end

Then /^show me the page$/ do
  save_and_open_page
end