class ArticlesController < ApplicationController
  before_action :authenticate_user!

  def index
    @articles = Article.all
    respond_to do |format|
      format.html {render 'index'}
      format.json {render json: @articles.to_json}
    end
  end

  def show
    # unless current_user.guest?
      @article = Article.find(params[:id])
      respond_to do |format|
        format.html {render 'show'}
        format.json {render json: @article.to_json}
      end
    # else
    #   render json: {message: "you do not have access to perform this action"}, status: :unauthorized
    # end
  end

  def new
    @article = Article.new
  end

  def create
    # if current_user.admin?
      @article = Article.new(article_params)
      if @article.save
        respond_to do |format|
          format.html {redirect_to @article}
          format.json {render json: @articles.to_json, status: :created}
        end
      else
        respond_to do |format|
          format.html {render :new, status: :unprocessable_entity}
          format.json {render json: {message: "you do not have access to perform this action"}, status: :unauthorized}
        end
      end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    # unless current_user.guest?
      if @article.update(article_params)
        respond_to do |format|
          format.html {redirect_to @article}
          format.json {render json: @articles.to_json, status: :ok}
        end
      else
        respond_to do |format|
          format.html {ender :edit, status: :unprocessable_entity}
          format.json {render json: {message: "you do not have access to perform this action"}, status: :unauthorized}
        end
      end
  end

  def destroy
    # if current_user.admin? 
      @article = Article.find(params[:id])
      @article.destroy
      redirect_to root_path, status: :see_other
    # else 
    #   render json: {message: "you do not have access to perform this action"}, status: :unauthorized
    # end
  end

  private
    def article_params
      params.require(:article).permit(:title, :body)
    end
end
