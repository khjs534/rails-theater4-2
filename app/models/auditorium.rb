class Auditorium < ActiveRecord::Base

  belongs_to :theater
  has_many :showings

end
