class CreateLaunchesWorker
  include Sidekiq::Worker

  def perform
    puts "CREATE LAUNCHES WORKER SENDO CHAMADO"
    (1..20).each do |i|
      ::ImportLaunchesResponseService.new(i).call
    end
  end
end