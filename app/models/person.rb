class Person < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :role, :bio, :headshot, :portrait, :email, :password, :password_confirmation, :admin, :display
  
  has_attached_file :headshot, :styles => { :listing => "180x180#", :thumb => "90x90#" }
  has_attached_file :portrait, :styles => {:display => "295x648#"}
  
  def name
   "#{first_name} #{last_name}"
  end
  
  attr_accessor :password
  before_save :encrypt_password
  
  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email
  
  def self.authenticate(email, password)
    user = find_by_email(email)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end
  
  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end  
  
  
  
  
end


# == Schema Information
#
# Table name: people
#
#  id                    :integer         not null, primary key
#  first_name            :string(255)
#  last_name             :string(255)
#  role                  :string(255)
#  bio                   :text
#  created_at            :datetime
#  updated_at            :datetime
#  headshot_file_name    :string(255)
#  headshot_content_type :string(255)
#  headshot_file_size    :integer
#  headshot_updated_at   :datetime
#  portrait_file_name    :string(255)
#  portrait_content_type :string(255)
#  portrait_file_size    :integer
#  portrait_updated_at   :datetime
#

