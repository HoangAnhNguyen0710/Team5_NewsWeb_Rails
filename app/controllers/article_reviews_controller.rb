class ArticleReviewsController < ApplicationController
  before_action :set_article_review, only: %i[ show edit update destroy ]

  # GET /article_reviews or /article_reviews.json
  def index
    @article_reviews = ArticleReview.all
  end

  # GET /article_reviews/1 or /article_reviews/1.json
  def show
  end

  # GET /article_reviews/new
  def new
    @article_review = ArticleReview.new
  end

  # GET /article_reviews/1/edit
  def edit
  end

  # POST /article_reviews or /article_reviews.json
  def create
    @article_review = ArticleReview.new(article_review_params)

    respond_to do |format|
      if @article_review.save
        url = "/articles/" + @article_review.article_id.to_s
        format.html { redirect_to url, notice: 'Review was successfully created.' }
        format.json { render :show, status: :created, location: @article_review }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @article_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /article_reviews/1 or /article_reviews/1.json
  def update
    respond_to do |format|
      if @article_review.update(article_review_params)
        format.html { redirect_to article_review_url(@article_review), notice: "Article review was successfully updated." }
        format.json { render :show, status: :ok, location: @article_review }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @article_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /article_reviews/1 or /article_reviews/1.json
  def destroy
    @article_review.destroy

    respond_to do |format|
      format.html { redirect_to article_reviews_url, notice: "Article review was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article_review
      @article_review = ArticleReview.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def article_review_params
      params.require(:article_review).permit(:user_id, :article_id, :review)
    end
end
