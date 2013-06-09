module PageWithLeftHandMenu
  include BaseFunctions

  def valid?
    has_selector? :context
  end

  def selectors
    mapping= {
        :context => "#nav",
        :job_menu => "[alt=Jobs]",
    }
  end

  private :selectors

  def select_job_menu
    (find_by_selector :job_menu).click
  end

end