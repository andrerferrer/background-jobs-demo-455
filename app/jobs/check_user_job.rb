class CheckUserJob < ApplicationJob
  queue_as :default

  def perform(user)
    puts "checando o usuário. Vai levar um tempo"
    sleep 2
    user.update(checked: true)
    puts "Usuario atualizado"
  end
end
