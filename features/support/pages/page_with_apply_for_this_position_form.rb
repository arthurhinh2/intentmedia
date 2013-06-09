module PageWithApplyForThisPositionForm
  include BaseFunctions

  def valid?
    has_selector? :context
  end

  def selectors
    mapping= {
        :context => "#resumator-resume-upload",
        :first_name_input_field => "#resumator-firstname-value",
        :last_name_input_field => "#resumator-lastname-value",
        :email_input_field => "#resumator-email-value",
        :phone_input_field => "#resumator-phone-value",
        :paste_resume_link => "#resumator-choose-paste",
        :resume_input_field => "#resumator-resumetext-value",
        :submit_button => "#resumator-submit-resume"
    }
  end

  private :selectors

  def set_first_name value
    (find_by_selector :first_name_input_field).set value
  end

  def set_last_name value
    (find_by_selector :last_name_input_field).set value
  end

  def set_email_address value
    (find_by_selector :email_input_field).set value
  end

  def set_phone_number value
    (find_by_selector :phone_input_field).set value
  end

  def paste_resume resume
    (find_by_selector :paste_resume_link).click
    (find_by_selector :resume_input_field).set resume
  end

  def submit_form
    (find_by_selector :submit_button).click
  end

end