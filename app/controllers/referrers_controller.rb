class ReferrersController < ApiController
 before_action :set_Referrer, only: [:show, :edit, :update, :destroy]

  def index
    if not params[:user_id]
      @referrers = Referrer.all
    else
      @referrers = Referrer.find_by_user_id(params[:user_id])
    end

    if params[:callback]
      render json: @referrers , :callback => params[:callback] 
    else
      render json: @referrers  
    end
   
  end

  def show
    respond_with(@referrers)
  end

  def new
    @referrers = Referrer.new
    respond_with(@referrers)
  end

  def edit
  end

  def create
  sw = true;
  @referrers  =  params["referrers"] 
      ActiveRecord::Base.transaction do
        @referrers.each do |referrer|
        puts referrer 
          @referr = Referrer.create(user_id: referrer["user_id"], nombre: referrer["nombre"], mail: referrer["mail"], empresa: referrer["empresa"])
          if @referr
          else
            sw = false;
          end           
        end
      end
      if sw
       render json: @referrers, status: :ok
      else
       render json: @referrers, status: :unprocessable_entity
      end  
 
  end

  def destroy
  #  @imiAnswer.destroy
   # respond_with(@imiAnswer)
  end

  def download
   # @imiAnswer = ImiAnswer.all
 #  @users=User.all
    #--render :xlsx => "/views/characterizations/download.xlsx"
  #  render xlsx: "/views/characterizations/download.xlsx", filename: "report_instrumento_#{Time.now.strftime("%d_%m_%Y_%H%M")}.xlsx"
  end

  private
    def set_Referrer
      @referrers = params[:referrers]
    end

    def referrer_params
      params.permit(referrers:[:user_id, :nombre,  :empresa, :mail])
    end
end


