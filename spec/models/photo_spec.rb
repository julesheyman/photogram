require "rails_helper"

RSpec.describe Photo, type: :model do
  describe "Direct Associations" do
    it { should belong_to(:user) }

    it { should have_many(:comments) }

    it { should have_many(:likes) }
  end

  describe "InDirect Associations" do
  end

  describe "Validations" do
  end
end
