class ArticlesController < ApplicationController
  def index #Upto this only router has mapped the route to this index action of this ArticlesController
    @articles = Article.all #Now, this index action uses the Article model to fetch all articles from the database n assigns 
                            #this to the @articles instance variable.
  end

#Read
  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

#Create
  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end

#Update
  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

#Delete
  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path, status: :see_other
  end

#Param hash
  private
  def article_params
      params.require(:article).permit(:title, :body, :status)
  end
end






 