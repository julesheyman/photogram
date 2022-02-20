class Comment < ApplicationRecord
  # Direct associations

  belongs_to :user

  belongs_to :photo

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    user.to_s
  end
end
