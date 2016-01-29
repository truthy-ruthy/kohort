class Kohort < ActiveRecord::Base
  has_many :users


  has_many :ages


  has_many :coeds


  has_many :daytimes


  has_many :frequencies


  has_many :genders


  has_many :industries


  has_many :interactions

end
