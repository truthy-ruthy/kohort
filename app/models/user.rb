class User < ActiveRecord::Base
  has_many :ages
  has_many :genders

  has_secure_password
  validates :password, presence: {on: :create}, length: { minimum: 6 }
  validates_confirmation_of :password

  before_create { self.email = email.downcase }
  validates :first_name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }


  #Returns the hash digest of the given string.
   def User.digest(string)
     cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                   BCrypt::Engine.cost
     BCrypt::Password.create(string, cost: cost)
   end

end
