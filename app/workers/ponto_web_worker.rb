class PontoWebWorker
  include Sidekiq::Worker

  def perform (text)
    p text
    User.find_by(registration: '1234')
  end
end
