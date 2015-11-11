# model/concerns/validate_assets.rb

module ValidateAssets
  extend ActiveSupport::Concern

  included do
    before_validation :clean_vimeo_id,   if: :vimeo?,   on: :create
    before_validation :clean_youtube_id, if: :youtube?, on: :create

    validates :title,       presence: true, if: :image?
    validates :title,       presence: true, if: :gallery?
    validates :title,       presence: true, if: :vimeo?
    validates :title,       presence: true, if: :youtube?
    validates :textbox,     presence: true, if: :text?
    validates :imagebox,    presence: true, if: :image?
    validates :gallerybox,  presence: true, if: :gallery?
    validates :vimeobox,    presence: true, if: :vimeo?
    validates :youtubebox,  presence: true, if: :youtube?
  end

  # module ClassMethods
  # end
end
