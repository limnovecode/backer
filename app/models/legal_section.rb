class LegalSection < ActiveRecord::Base
  before_validation :generate_slug, on: :create, uniqueness: true

  def to_param
    slug
  end

  private

  include SlugGenerator
end
