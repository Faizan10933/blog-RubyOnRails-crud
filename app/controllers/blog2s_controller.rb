class Blog2sController < ApplicationController
  before_action :set_blog2, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]

  # GET /blog2s or /blog2s.json
  def index
    @blog2s = Blog2.all
  end

  # GET /blog2s/1 or /blog2s/1.json
  def show
  end

  # GET /blog2s/new
  def new
    #@blog2 = Blog2.new
    @blog2 = current_user.blog2s.build
  end

  # GET /blog2s/1/edit
  def edit
  end

  # POST /blog2s or /blog2s.json
  def create
    #@blog2 = Blog2.new(blog2_params)
    @blog2 = current_user.blog2s.build(blog2_params)

    respond_to do |format|
      if @blog2.save
        format.html { redirect_to @blog2, notice: "Blog2 was successfully created." }
        format.json { render :show, status: :created, location: @blog2 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @blog2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blog2s/1 or /blog2s/1.json
  def update
    respond_to do |format|
      if @blog2.update(blog2_params)
        format.html { redirect_to @blog2, notice: "Blog2 was successfully updated." }
        format.json { render :show, status: :ok, location: @blog2 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @blog2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blog2s/1 or /blog2s/1.json
  def destroy
    @blog2.destroy
    respond_to do |format|
      format.html { redirect_to blog2s_url, notice: "Blog2 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def correct_user
    @blog2 = current_user.blog2s.find_by(id: params[:id])
    redirect_to blog2s_path, notice: "Not Authorized To Edit This Blog" if @blog2.nil?
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog2
      @blog2 = Blog2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def blog2_params
      params.require(:blog2).permit(:title, :author, :content, :user_id)
    end
end
