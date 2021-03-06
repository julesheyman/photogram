class PhotoResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :date, :string
  attribute :caption, :string
  attribute :user_id, :integer
  attribute :image, :string

  # Direct associations

  belongs_to :user

  has_many   :comments

  has_many   :likes

  # Indirect associations
end
