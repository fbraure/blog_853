class ArticleFlosController < ApplicationController
  before_action :set_article_flo, only: [:show, :edit, :update, :destroy]

  # GET /article_flos
  def index
    @article_flos = ArticleFlo.all
  end

  # GET /article_flos/1
  def show
  end

  # GET /article_flos/new
  def new
    @article_flo = ArticleFlo.new
  end

  # GET /article_flos/1/edit
  def edit
  end

  # POST /article_flos
  def create
    @article_flo = ArticleFlo.new(article_flo_params)

    if @article_flo.save
      redirect_to @article_flo, notice: 'Article flo was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /article_flos/1
  def update
    if @article_flo.update(article_flo_params)
      redirect_to @article_flo, notice: 'Article flo was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /article_flos/1
  def destroy
    @article_flo.destroy
    redirect_to article_flos_url, notice: 'Article flo was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article_flo
      @article_flo = ArticleFlo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def article_flo_params
      params.require(:article_flo).permit(:title, :body)
    end
end
