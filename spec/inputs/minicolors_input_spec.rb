require 'spec_helper'

describe 'minicolors input' do
  it 'passes minicolors settings' do
    markup = helper.simple_form_for :foo, url: '' do |f|
      f.input :minicolors, as: :minicolors, input_html: {data: {minicolors: {theme: :bootstrap}}}
    end
    doc = Nokogiri::HTML(markup)
    expect(MultiJson.decode(doc.css('#foo_minicolors').attr('data-minicolors').text)).
      to eq('theme' => 'bootstrap')
  end
end
