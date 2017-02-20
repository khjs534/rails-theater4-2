require 'rails_helper'

RSpec.describe Sale, type: :model do
  date = DateTime.now
  let(:theater) {Theater.new(name: "Rails Theater")}
  let(:auditorium) {Auditorium.new(auditorium_number: 1,seating_capacity: 10,theater: theater)}
  let(:playing_movie) {Movie.new(title:"movie2",playing:true)}
  let(:showing) {Showing.new(time: date, movie: playing_movie, auditorium: auditorium)}
  let(:sale) {Sale.new(customer_name:"Jerry", customer_email:"jerryjerryson@gmail.com", showing: showing)}

  describe "attributes" do
    it "has attributes" do
      expect(sale.customer_name).to eq "Jerry"
      expect(sale.customer_email).to eq "jerryjerryson@gmail.com"
    end
  end

  describe "associations" do
    it "has correct associations" do
      expect(sale.showing).to be showing
    end
  end
end
