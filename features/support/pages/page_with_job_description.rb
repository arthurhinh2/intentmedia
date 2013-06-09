module PageWithJobDescription
  include BaseFunctions

  def valid?
    has_selector? :job_title
  end

  def selectors
    mapping= {
        :job_title => "#resumator-job-title",
    }
  end

  private :selectors

  def job_title
    (find_by_selector :job_title).text
  end

end