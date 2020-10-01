class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_commit :async_update # create ou update
  after_create :send_confirmation_email # create

  private 

  def send_confirmation_email
    # mandar um email de confirmação para o usuário
  end

  def async_update
    # Síncrono
    # UpdateUserJob.perform_now(self)
    
    # Assíncrono (background job)
    UpdateUserJob.perform_later(self)
  end
end
