class User < ActiveRecord::Base
  include ActiveModel::Validations
  serialize :groups_id, Array
  has_many :group
  has_secure_password
  validates :email, :presence =>true,
                    :uniqueness=>true
  validates_presence_of :f_name, :l_name, :on => :create
  
  def self.find_or_create_from_email(email)
    password = SecureRandom.base64
    User.where(email: email.downcase).first_or_create!(password: password, password_confirmation: password)
  end
end