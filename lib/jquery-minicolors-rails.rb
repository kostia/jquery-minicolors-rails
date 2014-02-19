require 'jquery-minicolors-rails/engine'

module JqueryMinicolorsRails
  def self.background_image_data_url
    @_background_image_data_url ||=
        File.read(File.expand_path('../../vendor/assets/images/jquery.minicolors.txt', __FILE__))
  end
end
