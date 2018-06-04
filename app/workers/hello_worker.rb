class HelloWorker
  include Sidekiq::Worker

  def perform(first_name)
    Rails.logger.info("Hello #{first_name}! ")
  end
end
