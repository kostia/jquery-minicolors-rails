if defined? SimpleForm
  class MinicolorsInput < SimpleForm::Inputs::StringInput
    def input_html_options
      options = super
      options[:data] ||= {}
      options[:data].merge! editor: 'minicolors'
      options
    end

    def input_type; :text; end
  end
end
