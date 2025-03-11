class PagesController < ApplicationController
  def home
    @flats = Flat.where(status: 'available')
  end
end
