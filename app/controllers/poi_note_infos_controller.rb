# == Schema Information
#
# Table name: poi_note_infos
#
#  id                 :integer          not null, primary key
#  note_id            :integer
#  description_detail :text
#  poi_info_id        :integer
#  poi_info_type      :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class PoiNoteInfosController < ApplicationController
  before_action :set_poi_note_info, only: [:show, :edit, :update, :destroy]

  # GET /poi_note_infos
  # GET /poi_note_infos.json
  def index
    @poi_note_infos = PoiNoteInfo.all
  end

  # GET /poi_note_infos/1
  # GET /poi_note_infos/1.json
  def show
  end

  # GET /poi_note_infos/new
  def new
    @poi_note_info = PoiNoteInfo.new
  end

  # GET /poi_note_infos/1/edit
  def edit
  end

  # POST /poi_note_infos
  # POST /poi_note_infos.json
  def create
    @poi_note_info = PoiNoteInfo.new(poi_note_info_params)

    respond_to do |format|
      if @poi_note_info.save
        format.html { redirect_to @poi_note_info, notice: 'Poi note info was successfully created.' }
        format.json { render :show, status: :created, location: @poi_note_info }
      else
        format.html { render :new }
        format.json { render json: @poi_note_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /poi_note_infos/1
  # PATCH/PUT /poi_note_infos/1.json
  def update
    respond_to do |format|
      if @poi_note_info.update(poi_note_info_params)
        format.html { redirect_to @poi_note_info, notice: 'Poi note info was successfully updated.' }
        format.json { render :show, status: :ok, location: @poi_note_info }
      else
        format.html { render :edit }
        format.json { render json: @poi_note_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poi_note_infos/1
  # DELETE /poi_note_infos/1.json
  def destroy
    @poi_note_info.destroy
    respond_to do |format|
      format.html { redirect_to poi_note_infos_url, notice: 'Poi note info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poi_note_info
      @poi_note_info = PoiNoteInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def poi_note_info_params
      params.require(:poi_note_info).permit(:note_id, :description_detail, :poi_info_id, :poi_info_type)
    end
end
