require 'jquery-minicolors-rails/engine'

module JqueryMinicolorsRails
  class << self
    attr_writer :use_data_urls

    def use_data_urls?
      defined?(@use_data_urls) ? !!@use_data_urls : true
    end

    def image_data_url(name)
      image_data_url_cache.fetch(name) do
        image_data_url_cache[:name] = load_image_data_url(name)
      end
    end

    private

    def image_data_url_cache
      @image_data_url_cache ||= {}
    end

    def load_image_data_url(name)
      File.read(File.expand_path("../../vendor/assets/images/jquery.minicolors.#{name}", __FILE__))
    end
  end
end
