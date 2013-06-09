When(/^I choose Agile Quality Assurance Engineer position$/) do
  on_page_with :job_feed do |job_feed|
    job_feed.select_job "Agile Quality Assurance Engineer"
  end
end

When(/^I filled out the Apply for this Position form with the following details:$/) do |fields|
  new_window=page.driver.browser.window_handles.last
  page.within_window new_window do
    on_page_with :apply_for_this_position_form do |form|
      fields.rows_hash.each do |key, value|
        form.send("set_#{key}".gsub(' ', '_').downcase, value)
      end
    end
  end
end

Then(/^I should see "(.*?)" job description$/) do |job|
  new_window=page.driver.browser.window_handles.last
  page.within_window new_window do
    on_page_with :job_description do |page|
      page.job_title.should == job
    end
  end
end

When(/^I paste my resume$/) do
  resume_link="http://au.linkedin.com/pub/arthur-hinh/9/85/118"
  new_window=page.driver.browser.window_handles.last
  page.within_window new_window do
    on_page_with :apply_for_this_position_form do |form|
      form.paste_resume(resume_link)
    end
  end
end

When(/^I submit the application$/) do
  new_window=page.driver.browser.window_handles.last
  page.within_window new_window do
    on_page_with :apply_for_this_position_form do |form|
      form.submit_form
    end
  end
end

Then(/^I should see a application confirmation page$/) do
  on_page_with :application_confirmation do |page|
    page.get_confirmation_message.should == "Your application has been received."
  end
end