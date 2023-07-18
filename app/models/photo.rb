class Photo < ApplicationRecord
  TRUNCATED_DESCRIPTION_MAX_LENGTH = 50

  THUMB_SIZE = 100
  SMALL_SIZE = 400
  MEDIUM_SIZE = 800
  LARGE_SIZE = 1200

  has_one_attached :image do |attachable|
    attachable.variant :thumb, resize_to_limit: [THUMB_SIZE, THUMB_SIZE]
    attachable.variant :small, resize_to_limit: [SMALL_SIZE, SMALL_SIZE]
    attachable.variant :medium, resize_to_limit: [MEDIUM_SIZE, MEDIUM_SIZE]
    attachable.variant :large, resize_to_limit: [LARGE_SIZE, LARGE_SIZE]
  end

  def truncated_description
    if description.length > TRUNCATED_DESCRIPTION_MAX_LENGTH
      description[0..(TRUNCATED_DESCRIPTION_MAX_LENGTH - 4)] + '...'
    else
      description
    end
  end

  # Vips documentation: https://www.rubydoc.info/gems/ruby-vips/Vips
  def image_thumb
    image.variant(:thumb)
  end

  def image_small
    image.variant(:small)
  end

  def image_medium
    image.variant(:medium)
  end

  def image_large
    image.variant(:large)
  end

  def image_full
    image
  end
end
