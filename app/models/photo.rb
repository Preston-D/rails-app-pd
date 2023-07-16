class Photo < ApplicationRecord
  has_one_attached :image

  TRUNCATED_DESCRIPTION_MAX_LENGTH = 50

  def truncated_description
    if description.length > TRUNCATED_DESCRIPTION_MAX_LENGTH
      description[0..(TRUNCATED_DESCRIPTION_MAX_LENGTH - 4)] + '...'
    else
      description
    end
  end
end
