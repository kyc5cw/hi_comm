class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable
  has_one :profile
  has_many :posts

  has_many :memberships
  has_many :groups, through: :memberships

  has_many :affiliations
  has_many :affiliates, through: :affiliations

  has_many :inverse_affiliations, :class_name =>  "Affiliation", :foreign_key => "affiliate_id"
  has_many :inverse_affiliates, :through => :inverse_affiliations, :source => :user

  has_one :board, as: :boardable

  after_create :create_profile

  acts_as_messageable

  private

   def create_profile
    @profile = Profile.create
    @profile.user = self
    self.profile = @profile
  end
  
end
