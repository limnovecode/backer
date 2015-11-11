# model/concerns/clean_video.rb

module CleanVideo
  extend ActiveSupport::Concern

  # Split Vimeo ID
  def clean_vimeo_regex
    vimeobox.to_s.gsub!(%r{ (/(^(vimeo\/)|(^(.*[\/])))|(^(vimeo\/)|(^(.*[\/])))/) }, "") if vimeobox
  end

  # Split Youtube ID
  def clean_youtube_regex
    youtubebox.to_s.gsub!(%r{ (/(^(youtu.be\/)|(^(.*[\/])))|(^(youtu.be\/)|(^(.*[\/])))/) }, "") if youtubebox
  end

  # Save only the Vimeo ID
  def clean_vimeo_id
    self.vimeobox = clean_vimeo_regex
  end

  # Save only the Youtube ID
  def clean_youtube_id
    self.youtubebox = clean_youtube_regex
  end
end
