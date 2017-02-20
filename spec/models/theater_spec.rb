require 'rails_helper'

RSpec.describe Theater, type: :model do
  let(:theater) {Theater.new(name: "Rails Theater")}

  describe "attributes" do
    it "has attributes" do
      expect(theater.name).to eq "Rails Theater"
    end
  end
end
