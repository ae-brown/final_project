class RemindsController < ApplicationController
  before_action :set_remind, only: [:show, :edit, :update, :destroy]
  

  
  def index
    @reminds = Remind.all
    @remind = Remind.new
  end

  
  def show
  @reminds = Remind.all
  end


  def new
  @remind = Remind.new
  end

  
  def edit
  end

  
  def create
    @remind = Remind.new(remind_params)

    respond_to do |format|
      if @remind.save
        format.html { redirect_to reminds_path, notice: 'Remind was successfully created.' }
        format.json { render :show, status: :created, location: @remind }

      else
        format.html { render :new }
        format.json { render json: @remind.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def update
    respond_to do |format|
      if @remind.update(remind_params)
        format.html { redirect_to @remind, notice: 'Remind was successfully updated.' }
        format.json { render :show, status: :ok, location: @remind }
      else
        format.html { render :edit }
        format.json { render json: @remind.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def destroy
    @remind.destroy
    respond_to do |format|
      format.html { redirect_to reminds_url, notice: 'Remind was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_remind
      @remind = Remind.find(params[:id])
    end

    
    def remind_params
      params.require(:remind).permit(:user_id, :medication, :dosage, :med_id, :time, :frequence, :cel_phone).merge(user_id: current_user.id)
    end
end
