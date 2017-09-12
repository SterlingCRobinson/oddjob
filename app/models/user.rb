class User < ApplicationRecord
	#create user method for avg of ratings
	has_many :jobs
	has_attached_file :avatar, 
	styles: { medium: "300x300>", thumb: "100x100>" }, 
	default_url: "http://coverrme.com/public-uploads/profile-pics/unknown.jpg"

  validates_attachment_content_type :avatar, 
  content_type: /\Aimage\/.*\z/
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  ratyrate_rater
  ratyrate_rateable "overall", "friendliness", "timing", "work_ethic"

  def sorting_rating()
   (self.average("timing").avg + self.average("friendliness").avg + self.average("work_ethic").avg) / 3
  end
end