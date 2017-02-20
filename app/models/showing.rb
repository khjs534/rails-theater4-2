class Showing < ActiveRecord::Base

  belongs_to :auditorium
  belongs_to :movie
  has_many :sales

  def available_seating
    self.auditorium.seating_capacity - self.sales.count
  end

end
