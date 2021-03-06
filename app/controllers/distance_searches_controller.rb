require 'net/http'
class DistanceSearchesController < ApplicationController
  before_action :set_distance_search, only: [:show, :edit, :update, :destroy]

  def index
    @distance_searches = DistanceSearch.all
  end

  def show
  end

  def new
    @distance_search = DistanceSearch.new
  end

  def create
    @distance_search = DistanceSearch.new(distance_search_params)
    uri = URI("https://www.zipcodeapi.com/rest/JSXJnGGDK1jZcXbx9ePKocjC48hFkPw3HtN5atJVu2VG06eal3UJgemkmD0HswLa/distance.json/#{distance_search_params[:source_zip_code]}/#{distance_search_params[:destination_zip_code]}/km")
    res = Net::HTTP.get_response(uri)
    @distance_search.calculated_distance = res.body.split(':')[1].chomp('}').to_f
        
    respond_to do |format|
      if res.code != "400" && @distance_search.save
        format.html { redirect_to @distance_search, notice: "Calculated Distance is #{@distance_search.calculated_distance}" }
        format.json { render :show, status: :created, location: @distance_search }
      else
        format.html { render :new }
        format.json { render json:  res.message, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @distance_search.destroy
    respond_to do |format|
      format.html { redirect_to distance_searches_url, notice: 'Distance search was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_distance_search
      @distance_search = DistanceSearch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def distance_search_params
      params.require(:distance_search).permit(:source_zip_code, :destination_zip_code)
    end
end
