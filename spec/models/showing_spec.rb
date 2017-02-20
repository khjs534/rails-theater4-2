require 'rails_helper'

RSpec.describe Showing, type: :model do
  date = DateTime.now
  let(:theater) {Theater.new(name: "Rails Theater")}
  let(:auditorium) {Auditorium.new(auditorium_number: 1,seating_capacity: 10,theater: theater)}
  let(:playing_movie) {Movie.new(title:"movie2",playing:true)}
  let(:showing) {Showing.new(time: date, movie: playing_movie, auditorium: auditorium)}

  describe "Attributes" do
    it "has attributes" do
      expect(showing.time).to eq date
    end
  end

  describe "Associations" do
    it "has the correct Associations" do
      expect(showing.movie.title).to eq "movie2"
      expect(showing.auditorium.theater.name).to eq "Rails Theater"
    end
  end

  describe "available_seating" do
    it "shows the correct available_seating" do
      expect(showing.available_seating).to eq 10
    end

    it "decreases with the creation of a sale" do
      Sale.create(customer_name:"Jerry", customer_email:"jerryjerryson@gmail.com", showing: showing)
      expect(showing.available_seating).to eq 9
    end
  end
end
