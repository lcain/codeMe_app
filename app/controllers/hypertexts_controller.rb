# == Schema Information
#
# Table name: hypertexts
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class HypertextsController < ApplicationController
  before_action :set_hypertext, only: [:show, :edit, :update, :destroy]

  # GET /hypertexts
  # GET /hypertexts.json
  def index
    @hypertexts = Hypertext.all
  end

  # GET /hypertexts/1
  # GET /hypertexts/1.json
  def show
  end

  # GET /hypertexts/new
  def new
    @hypertext = Hypertext.new
  end

  # GET /hypertexts/1/edit
  def edit
  end

  # POST /hypertexts
  # POST /hypertexts.json
  def create
    @hypertext = Hypertext.new(hypertext_params)

    respond_to do |format|
      if @hypertext.save
        format.html { redirect_to @hypertext, notice: 'Hypertext was successfully created.' }
        format.json { render :show, status: :created, location: @hypertext }
      else
        format.html { render :new }
        format.json { render json: @hypertext.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hypertexts/1
  # PATCH/PUT /hypertexts/1.json
  def update
    respond_to do |format|
      if @hypertext.update(hypertext_params)
        format.html { redirect_to @hypertext, notice: 'Hypertext was successfully updated.' }
        format.json { render :show, status: :ok, location: @hypertext }
      else
        format.html { render :edit }
        format.json { render json: @hypertext.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hypertexts/1
  # DELETE /hypertexts/1.json
  def destroy
    @hypertext.destroy
    respond_to do |format|
      format.html { redirect_to hypertexts_url, notice: 'Hypertext was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def find_by
    return render json: Hypertext.find_by({user_id: params[:butts]})
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hypertext
      @hypertext = Hypertext.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hypertext_params
      params.require(:hypertext).permit(:user_id, :content)
    end
end
