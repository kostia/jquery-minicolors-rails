require 'spec_helper'

describe 'minicolors input' do
  subject do
    helper.simple_form_for :foo, url: '' do |f|
      f.input :minicolors, as: :minicolors, input_html: {data: {minicolors: {theme: :bootstrap}}}
    end
  end

  it { should have_selector('input[data-minicolors]') }

  it 'passes minicolors settings' do
    MultiJson.decode(Nokogiri::HTML(subject).css('#foo_minicolors').attr('data-minicolors').text).
        should eq({'theme' => 'bootstrap'})
  end
end
