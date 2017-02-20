require 'rails_helper'

RSpec.describe Movie, type: :model do
  let(:movie) {Movie.new(title:"movie1",playing:false)}
  let(:playing_movie) {Movie.new(title:"movie2",playing:true)}

  describe "#Attributes" do
    it "should have attributes" do
      expect(movie.title).to eq "movie1"
      expect(movie.playing).to be_falsey
    end
  end
end

