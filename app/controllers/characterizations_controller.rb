class CharacterizationsController < ApplicationController
  before_action :set_characterization, only: [:show, :edit, :update, :destroy]

  def index
    @characterizations = Characterization.all
    render json: @characterizations
  end

  def show
    respond_with(@characterization)
  end

  def new
    @characterization = Characterization.new
    respond_with(@characterization)
  end

  def edit
  end

  def create
    @characterization = Characterization.find_by_user_id(characterization_params[:user_id])
    if not @characterization
      @characterization = Characterization.new(characterization_params)
      if @characterization.save
       render json: @characterization, status: :ok
      else
       render json: @characterization, status: :unprocessable_entity
      end  
    else
      @characterization.update(characterization_params)
      render json: @characterization
    end  
  end

  def destroy
    @characterization.destroy
    respond_with(@characterization)
  end

  private
    def set_characterization
      @characterization = Characterization.find(params[:id])
    end

    def characterization_params
      params.require(:characterization).permit(:user_id, :p1, :p2, :p3, :p4, :p5, :p6, :p7, :p8, :p9, :p10, :p11, :p12, :p13, :p14, :p15, :p16, :p17, :p18, :p19, :p20, :p21, :p22, :p23, :p24, :p25, :p26, :p27, :p28, :p29, :p30, :p31, :p32, :p33, :p34, :p35, :p36, :p37, :p38, :p39, :p40, :p41, :p42, :p43, :p44, :p45, :p46, :p47, :p48, :p49, :p50, :p51, :p52, :p53, :p54, :p55, :p56, :p57, :p58, :p59, :p60, :p61, :p62, :p63, :p64, :p65, :p66, :p67, :p68, :p69, :p70, :p71, :p72, :p73, :p74, :p75, :p76, :p77, :p78, :p79, :p80, :p81, :p82, :p83, :p84, :p85, :p86, :p87, :p88, :p89, :p90, :p91, :p92, :p93, :p94, :p95, :p96, :p97, :p98, :p99, :p100, :finished)
    end
end
