class User < ActiveRecord::Base
  has_many :characterizations, dependent: :destroy
  before_create :set_auth_token
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def set_auth_token
    self.salt = BCrypt::Engine.generate_salt
    self.auth_token = BCrypt::Engine.hash_secret(SecureRandom.hex, salt)
  end
end
