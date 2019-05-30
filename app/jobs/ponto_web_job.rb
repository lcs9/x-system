class PontoWebJob < ApplicationJob
  queue_as :default

  PontoWebWorker.perform_at(30.seconds.from_now, 'Oiii!!!')
end
