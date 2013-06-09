module PageWithApplicationConfirmation
  include BaseFunctions

  def valid?
    has_selector? :context
  end

  def selectors
    mapping= {
        :context => "#resumator-site-header",
        :confirmation_message => "#resumator-job-title",
    }
  end

  private :selectors

  def get_confirmation_message
    (find_by_selector :confirmation_message).text
  end
end