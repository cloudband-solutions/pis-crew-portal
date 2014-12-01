class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, presence: true
  validates :middle_name, presence: true
  validates :last_name, presence: true
  validates :identification_number, presence: true, uniqueness: true
  validates :crew_token, presence: true, uniqueness: true

  before_validation :load_defaults

  def load_defaults
    if self.crew_token.nil?
      self.crew_token = "#{SecureRandom.hex}"
    end

    self.first_name = self.first_name.upcase
    self.last_name = self.last_name.upcase
  end
end
