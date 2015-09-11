class User < ActiveRecord::Base
  belongs_to :characterization, dependent: :destroy
  before_create :set_auth_token
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def set_auth_token
    self.auth_token = BCrypt::Engine.hash_secret(SecureRandom.hex, BCrypt::Engine.generate_salt)
  end

  def send_password_reset
  	generate_token(:reset_password_token)
  	self.reset_password_sent_at = Time.zone.now
  	save!
  	UserMailer.password_reset(self).deliver
  end

  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end
end
