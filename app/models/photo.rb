class Photo < ApplicationRecord
  # Direct associations

  has_many   :likes,
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    date
  end

end
