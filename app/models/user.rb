class User < ActiveRecord::Base
  include ActiveModel::Validations
  belongs_to :group
  has_secure_password
  validates :email, :presence =>true,
                    :uniqueness=>true
  validates_presence_of :f_name, :l_name, :password, :password_confirmation, :on => :create
end
