class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable
  private

  after_save :send_mail
  
  def send_mail
    
  end

  # def after_confirmation
  #   WelcomeMailer.send_greetings_notification(self)
  #         .deliver_now
  # end
end
