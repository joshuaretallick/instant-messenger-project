class CommentsController < ApplicationController
  before_action :set_comment, only: %i[ show edit update destroy ]

  # GET /comments or /comments.json
  def index
    @comments = Comment.all
  end

  # GET /comments/1 or /comments/1.json
  def show
  end

  # GET /comments/new
  def new
    @comment = Comment.new
  end

  # GET /comments/1/edit
  def edit
  end

  # POST /comments or /comments.json
  def create



    @commentable = Channel.find(comment_params[:channel_id])
    @comment = @commentable.comments.new(comment_params)
    if @comment.save
      $pubnub.publish(
        channel: "comments-" + "#{@commentable.id}",
        message: { comment: comment_params["body"] }
      )
      # Below is required when form is added to the Post page. Form needs to be submitted with JS
      # respond_to do |format|
      #   format.js { render :nothing => true }
      #   format.html
      # end

      # Currently we are just redirectiing to comments#index
      redirect_to comments_path, notice: "Comment was successfully created."
    else
      render :new
    end
  end

  # PATCH/PUT /comments/1 or /comments/1.json
  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to @comment, notice: "Comment was successfully updated." }
        format.json { render :show, status: :ok, location: @comment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1 or /comments/1.json
  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to comments_url, notice: "Comment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comment_params
      params.require(:comment).permit(:channel_id, :body)
    end
end
