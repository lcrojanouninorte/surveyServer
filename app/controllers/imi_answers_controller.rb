class ImiAnswersController < ApiController
 before_action :set_ImiAnswer, only: [:show, :edit, :update, :destroy]

  def index
    if not params[:user_id]
      @imiAnswer = ImiAnswer.all
    else
      @imiAnswer = ImiAnswer.find_by_user_id(params[:user_id])
    end

    if params[:callback]
      render json: @imiAnswer , :callback => params[:callback] , root: "answers"  
    else
      render json: @imiAnswer , root: "answers"  
    end
   
  end

  def show
    respond_with(@imiAnswer)
  end

  def new
    @imiAnswer = ImiAnswer.new
    respond_with(@imiAnswer)
  end

  def edit
  end

  def create
    @imiAnswer = ImiAnswer.find_by_user_id(imiAnswer_params[:user_id])
    if not @imiAnswer
      @imiAnswer = ImiAnswer.new(imiAnswer_params)
      if @imiAnswer.save
       render json: @imiAnswer, status: :ok, root: "answers"  
      else
       render json: @imiAnswer, status: :unprocessable_entity, root: "answers"  
      end  
    else
      @imiAnswer.update(imiAnswer_params)
      render json: @imiAnswer, root: "answers"  
    end  
  end

  def destroy
    @imiAnswer.destroy
    respond_with(@imiAnswer)
  end

  def download
    @imiAnswer = ImiAnswer.all
   @users=User.all
    #--render :xlsx => "/views/characterizations/download.xlsx"
    render xlsx: "/views/characterizations/download.xlsx", filename: "report_instrumento_#{Time.now.strftime("%d_%m_%Y_%H%M")}.xlsx"
  end

  private
    def set_ImiAnswer
      @imiAnswer = ImiAnswer.find(params[:id])
    end

    def imiAnswer_params
      params.require(:answers).permit(:user_id, :p1, :p2, :p3, :p4, :p5, :p6, :p7, :p8, :p9, :p10, :p11, :p12, :p13, :p14, :p15, :p16, :p17, :p18, :p19, :p20, :status)
    end
end


