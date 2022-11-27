class ChatroomUsersController < ApplicationController
  # before_action :authenticate_user!
  before_action :set_chatroom_user, only: %i[ show edit update destroy create ]

  # GET /chatroom_users or /chatroom_users.json
  def index
    @chatroom_users = ChatroomUser.all
  end

  # GET /chatroom_users/1 or /chatroom_users/1.json
  def show
  end

  # GET /chatroom_users/new
  def new
    @chatroom_user = ChatroomUser.new
  end

  # GET /chatroom_users/1/edit
  def edit
  end

  # POST /chatroom_users or /chatroom_users.json
  def create
    @chatroom_user = @chatroom.chatroom_users.where(user_id: current_user.id).first_or_create
    redirect_to @chatroom
    # respond_to do |format|
    #   if @chatroom_user.save
    #     format.html { redirect_to chatroom_user_url(@chatroom_user), notice: "Chatroom user was successfully created." }
    #     format.json { render :show, status: :created, location: @chatroom_user }
    #   else
    #     format.html { render :new, status: :unprocessable_entity }
    #     format.json { render json: @chatroom_user.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /chatroom_users/1 or /chatroom_users/1.json
  def update
    respond_to do |format|
      if @chatroom_user.update(chatroom_user_params)
        format.html { redirect_to chatroom_user_url(@chatroom_user), notice: "Chatroom user was successfully updated." }
        format.json { render :show, status: :ok, location: @chatroom_user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @chatroom_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chatroom_users/1 or /chatroom_users/1.json
  def destroy
    @chatroom_user = @chatroom.chatroom_user.where(id: current_user.id).destroy_all
    redirect_to chatroom_path

    # respond_to do |format|
    #   format.html { redirect_to chatroom_users_url, notice: "Chatroom user was successfully destroyed." }
    #   format.json { head :no_content }
    # end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chatroom_user
      @chatroom = Chatroom.find(params[:chatroom_id])
    end

    # Only allow a list of trusted parameters through.
    def chatroom_user_params
      params.require(:chatroom_user).permit(:chatroom_id, :user_id)
    end
end
