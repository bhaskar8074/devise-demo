class MyFirstJob
  include Sidekiq::Job

  def perform(*args)
    # Do something
    HelloWorldJob.perform_later
  end
end
