require 'rails_helper'

RSpec.describe Admin, type: :model do
  let(:admin) {Admin.new(username:"superuser",password: "rootpassword123")}

  describe "Attributes" do
    it "has attributes" do
      expect(admin.username).to eq "superuser"
      expect(admin.password == "rootpassword123").to be_truthy
    end
  end
end
