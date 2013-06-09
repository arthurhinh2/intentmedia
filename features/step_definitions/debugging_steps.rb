When(/^I sleep for "(.*?)" seconds$/) do |seconds|
  sleep seconds
end

Given(/^I am on "(.*?)" page$/) do |url |
  visit url
end