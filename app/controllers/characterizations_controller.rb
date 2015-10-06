class CharacterizationsController < ApiController
  #before_filter :api_authenticate_user!
  before_action :set_characterization, only: [:show, :edit, :update, :destroy]

  def index
    
    if not params[:user_id]
      @characterizations = Characterization.all
    else
      @characterizations = Characterization.find_by_user_id(params[:user_id])
    end

    if params[:callback]
      render json: @characterizations , :callback => params[:callback],root: "answers"  
    else
      render json: @characterizations,root: "answers"  
    end
   
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
       render json: @characterization, status: :ok, root: "answers"  
      else
       render json: @characterization, status: :unprocessable_entity, root: "answers"  
      end  
    else
      @characterization.update(characterization_params)
      render json: @characterization,root: "answers"  
    end  
  end

  def destroy
    @characterization.destroy
    respond_with(@characterization)
  end

  def download
   @characterizations = Characterization.all
   @users=User.all
   @referrers=Referrer.all
   @mindex=ImiAnswer.all
    #--render :xlsx => "/views/characterizations/download.xlsx"
    render xlsx: "/views/characterizations/download.xlsx", filename: "report_instrumento_#{Time.now.strftime("%d_%m_%Y_%H%M")}.xlsx"
  end

  private
    def set_characterization
      @characterization = Characterization.find(params[:id])
    end

    def characterization_params
      params.require(:answers).permit(:user_id, :p1, :p2, :p3, :p4, :p5, :p6, :p7, :p8, :p9, :p10, :p11, :p12, :p13, :p14, :p15, :p16, :p17, :p18, :p19, :p20, :p21, :p22, :p23, :p24, :p25, :p26, :p27, :p28, :p29, :p30, :p31, :p32, :p33, :p34, :p35, :p36, :p37, :p38, :p39, :p40, :p41, :p42, :p43, :p44, :p45, :p46, :p47, :p48, :p49, :p50, :p51, :p52, :p53, :p54, :p55, :p56, :p57, :p58, :p59, :p60, :p61, :p62, :p63, :p64, :p65, :p66, :p67, :p68, :p69, :p70, :p71, :p72, :p73, :p74, :p75, :p76, :p77, :p78, :p79, :p80, :p81, :p82, :p83, :p84, :p85, :p86, :p87, :p88, :p89, :p90, :p91, :p92, :p93, :p94, :p95, :p96, :p97, :p98, :p99, :p100, :p100, :p101, :p102, :p103, :p104, :p105, :p106, :p107, :p108, :p109, :p110, :p111, :p112, :p113, :p114, :p115, :p116, :p117, :p118, :p119, :p120, :p121, :p122, :p123, :p124, :p125, :p126, :p127, :p128, :p129, :p130, :finished)
    end
end
