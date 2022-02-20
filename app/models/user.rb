class User < ApplicationRecord
  # Direct associations

  has_many   :photos,
             dependent: :destroy

  has_many   :comments,
             dependent: :destroy

  has_many   :likes,
             dependent: :destroy

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    created_at
  end
end
