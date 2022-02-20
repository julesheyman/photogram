class Like < ApplicationRecord
  # Direct associations

  belongs_to :user

  belongs_to :photo

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    photo.to_s
  end

end
