require 'rails_helper'

RSpec.describe Auditorium, type: :model do
  let(:theater) {Theater.new(name: "Rails Theater")}
  let(:auditorium) {Auditorium.new(auditorium_number: 1,seating_capacity: 10,theater: theater)}

  describe "attributes" do
    it "has attributes" do
      expect(auditorium.auditorium_number).to eq 1
      expect(auditorium.seating_capacity).to eq 10
    end
  end

  describe "associations" do
    it "has the right associations" do
      theater
      expect(auditorium.theater).to be theater
    end
  end
end
