# model/concerns/slug_generator.rb

module SlugGenerator
  extend ActiveSupport::Concern

  # Slug Algorithm
  def generate_rand_slug(size = 8)
    charset = %w(n 1 u 2 m 3 e 4 r 5 o 6 l 7 o 8 g 9 y 0)
    (0...size).map { charset.to_a[rand(charset.size)] }.join
  end

  # Slug Generator
  def generate_slug
    self.slug ||= generate_rand_slug
  end
end
