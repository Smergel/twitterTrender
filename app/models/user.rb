class User < ActiveRecord::Base

  has_many :locations

  # Password generation
  attr_accessor :password
  validates :password, :presence => true,
                       :confirmation => true,
                       :format => { :with => /\A[([a-z]|[A-Z])0-9_-]{6,20}\z/, message: "Your password must be at least 6 characters long and include at least one numbee and one letter."}

  before_save :encrypt_password

  def encrypt_password
    self.password_salt = BCrypt::Engine.generate_salt
    self.password_hash = Bcrypt::Engine.hash_secret(password, password_salt)
  end

  # Password authentication for login
  def self.authenticate(user_name, password)
    user = User.where(user_name: user_name).first
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end

  # New user validations

  validates :user_name, :presence => true,
                        :uniqueness => true
  validates :email, :presence => true,
                    :uniqueness => true,
                    format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }

end
