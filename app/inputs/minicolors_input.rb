if defined? SimpleForm
  class MinicolorsInput < SimpleForm::Inputs::StringInput
    def input_html_options
      super.tap do |options|
        options[:data] ||= {}
        options[:data][:minicolors] ||= {}
      end
    end

    def input_type; :string end
  end
else
  class MinicolorsInput; end
end
