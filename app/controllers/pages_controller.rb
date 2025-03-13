class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: :home
  def home
    @flats = Flat.all

    if params[:search].present?
      query = "%#{params[:search]}%"
      @flats = @flats.where("title ILIKE ? OR description ILIKE ? OR address ILIKE ?", query, query, query)
    end
  end
end
