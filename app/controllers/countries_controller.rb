class CountriesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[ index show world_map ]

  def index
    if params[:query].present?
      @countries = Country.search_by_name(params[:query])
    else
      @countries = Country.all
    end
  end

  def world_map
    @countries = Country.all.map do |country|
      {
        name: country.name,
        id: country.id,
        popup_html: render_to_string(partial: "popup", locals: {country: country})
      }
    end
  end

  def show
    @country = Country.find(params[:id])
  end

  def toggle_favorite
    @country = Country.find(params[:id])
    if current_user.favorited?(@country)
      current_user.unfavorite(@country)
    else
      current_user.favorite(@country)
    end
  end
end
