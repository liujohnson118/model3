class User < ApplicationRecord
  has_many :cars

  validates :password, length: {minimum: 6}
  has_secure_password
  validates :email, uniqueness: { case_sensitive: false }
  validates :first_name, length: {minimum:1}
  validates :last_name, length: {minimum: 1}
  validates :passport, uniqueness: { case_sensitive: false }

  def self.authenticate_with_credentials(email,pw)
    email = email.split.join.downcase
    user = User.where(email: email).first
    ret = nil
    if user && user.authenticate(pw)
      ret = user
    else
    end
    ret
  end

  def self.age(id)
    dob=User.find(id).dob
    now = Time.now.utc.to_date
    now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
  end
end