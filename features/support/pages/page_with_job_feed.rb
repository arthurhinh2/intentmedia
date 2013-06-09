module PageWithJobFeed
  include BaseFunctions

  def valid?
    has_selector? :context
  end

  def selectors
    mapping= {
        :context => "#jobfeed",
    }
  end

  private :selectors

  def select_job job_title
    job_link="[href*='" + job_title.gsub(' ', '-') + "']"
    find(job_link).click
  end

end