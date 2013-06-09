Given(/^I am on the homepage of IntentMedia$/) do
  visit "#{BASE_URL}"
end

When(/^I navigate to the job section$/) do
  on_page_with :left_hand_menu do | left_hand_menu |
    left_hand_menu.select_job_menu
  end
end
