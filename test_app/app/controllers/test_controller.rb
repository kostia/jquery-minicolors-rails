class TestController < ApplicationController
  def index
    @balloon = OpenStruct.new(color: '#3a8a2f')
  end
end
