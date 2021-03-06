class User < ActiveRecord::Base
  has_secure_password
  has_many :rides
  has_many :attractions, through: :rides
  #validates_presence_of :name, :happiness, :nausea, :height, :tickets, :admin

  def mood
    return "happy" if self.happiness > self.nausea
    "sad"
  end
end
