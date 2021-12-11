class AnimeCommentsController < ApplicationController
  before_action :set_anime_comment, only: %i[ show edit update destroy ]

  # GET /anime_comments or /anime_comments.json
  def index
    @anime_comments = AnimeComment.all
  end

  # GET /anime_comments/1 or /anime_comments/1.json
  def show
  end

  # GET /anime_comments/new
  def new
    @anime_comment = AnimeComment.new
  end

  # GET /anime_comments/1/edit
  def edit
  end

  # POST /anime_comments or /anime_comments.json
  def create
    @anime_comment = AnimeComment.new(anime_comment_params)
    @anime_comment.user_id = current_user.id
    respond_to do |format|
      if @anime_comment.save
        format.html { redirect_to @anime_comment, notice: "Anime comment was successfully created." }
        format.json { render :show, status: :created, location: @anime_comment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @anime_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /anime_comments/1 or /anime_comments/1.json
  def update
    respond_to do |format|
      if @anime_comment.update(anime_comment_params)
        format.html { redirect_to @anime_comment, notice: "Anime comment was successfully updated." }
        format.json { render :show, status: :ok, location: @anime_comment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @anime_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anime_comments/1 or /anime_comments/1.json
  def destroy
    @anime_comment.destroy
    respond_to do |format|
      format.html { redirect_to anime_comments_url, notice: "Anime comment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anime_comment
      @anime_comment = AnimeComment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def anime_comment_params
      params.require(:anime_comment).permit(:user_id, :anime_id, :comment)
    end
end
