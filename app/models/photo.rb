class Photo < ApplicationRecord
  # Direct associations

  belongs_to :user

  has_many   :comments,
             :dependent => :destroy

  has_many   :likes,
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    date
  end

end
