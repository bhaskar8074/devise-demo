class WelcomeController < ApplicationController

  def trigger_job
    MyFirstJob.perform_async
    redirect_to other_job_done_path
  end

end