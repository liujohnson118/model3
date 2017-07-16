class User < ApplicationRecord
  has_many :cars

  validates :password, length: {minimum: 6}
  has_secure_password
  validates :email, uniqueness: { case_sensitive: false }
  validates :first_name, length: {minimum:1}
  validates :last_name, length: {minimum: 1}
  validates :passport, uniqueness: { case_sensitive: false }, length: {minimum: 2}
  validate :validateEmail

  # Method to authenticate email and password for login
  # Input:
  # email : email of user
  # pw: password of user
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

  # Method to calculate age of user
  # Input: id of user
  # Return: age in years of user
  def self.age(id)
    dob=User.find(id).dob
    now = Time.now.utc.to_date
    now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
  end

  # Custom validation method for user email
  # Email must contain @ and a dot after at for payment to go through.
  def validateEmail
    email_check = email.include?("@") && email.split("@")[1].include?(".")
    if email_check == false
      errors.add(:email, 'Invalid email address')
    end
    email_check
  end
end