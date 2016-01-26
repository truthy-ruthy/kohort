class User < ActiveRecord::Base
  has_secure_password
  has_many :ages 
  has_many :genders


  # attr_accessor :first_name, :email
  #
  # def initialize(attributes ={})
  #   @first_name = attributes[:name]
  #   @email = attributes[:email]
  # end
  before_save { self.email = email.downcase }
  validates :first_name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
    format: { with: VALID_EMAIL_REGEX },
    uniqueness: { case_sensitive: false }
end
