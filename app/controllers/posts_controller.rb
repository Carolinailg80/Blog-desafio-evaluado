class PostsController < ApplicationController
  def index
    @lista_posts = Post.all.order(created_at: :desc)
  end

  def new
  end

  # POST posts/create
  def create
    @new_post = Post.new(
      title: params[:title],
      content: params[:content],
      image_url: params[:image_url]
    )
    if @new_post.save
      # verdadero
      # Redirigir a la lista de posts
      redirect_to action: :index
    else
      # falso
      # pedir prestada la vista del new (el formulario)
      render :new
    end
  end
end
