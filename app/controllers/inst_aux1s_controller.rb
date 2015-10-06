class InstAux1sController < ApiController
  before_action :set_inst_aux1, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    if not params[:user_id]
      @instAux1 = InstAux1.all
    else
      @instAux1 = InstAux1.find_by_user_id(params[:user_id])
    end

    if params[:callback]
      render json: @instAux1 , :callback => params[:callback] , root: "answers"  
    else
      render json: @instAux1 , root: "answers"  
    end
  end

  def show
    respond_with(@inst_aux1)
  end

  def new
    @inst_aux1 = InstAux1.new
    respond_with(@inst_aux1)
  end

  def edit
  end

  def create
   @instAux1 = InstAux1.find_by_user_id(inst_aux1_params[:user_id])
    if not @instAux1
      @instAux1 = InstAux1.new(inst_aux1_params)
      if @instAux1.save
       render json: @instAux1, status: :ok, root: "answers"  
      else
       render json: @instAux1, status: :unprocessable_entity, root: "answers"  
      end  
    else
      @instAux1.update(inst_aux1_params)
      render json: @instAux1, root: "answers"  
    end  
  end

  def update
    @inst_aux1.update(inst_aux1_params)
    respond_with(@inst_aux1)
  end

  def destroy
    @inst_aux1.destroy
    respond_with(@inst_aux1)
  end

  private
    def set_inst_aux1
      @inst_aux1 = InstAux1.find(params[:id])
    end

    def inst_aux1_params
      params.require(:answers).permit(:user_id, :p1, :p2, :p3, :p4, :p5, :p6, :p7, :p8, :p9, :p10, :p11, :p12, :p13, :p14, :p15, :p16, :p17, :p18, :p19, :p20)
    end
end
