require 'jquery-minicolors-rails/engine'

module JqueryMinicolorsRails
  class << self
    attr_writer :use_data_urls

    def use_data_urls?
      !!@use_data_urls
    end

    def image_data_url
      @image_data_url ||=
          File.read(File.expand_path('../../vendor/assets/images/jquery.minicolors.txt', __FILE__))
    end
  end
end
