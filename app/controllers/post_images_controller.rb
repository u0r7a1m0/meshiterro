class PostImagesController < ApplicationController
  def new
    @post_image = PostImage.new
  end
  
  # 投稿データの保存
  def create
    @post_image = PostImage.new(post_image_params)
    @post_image.user_id = current_user.id
    @post_image.save
    redirect_to post_images_path
  end

  def index
    # 追記：post_imagesテーブル内に存在する全てのレコードのインスタンスを代入
    @post_images = PostImage.all
  end

  def show
    # 追記：@post_imageには特定のidのPostImageモデルを格納させる！
    @post_image = PostImage.find(params[:id])
    @post_comment = PostComment.new
  end
  
  def create
    @post_image = PostImage.new(post_image_params)
    @post_image.user_id = current_user.id
    if @post_image.save
      redirect_to post_images_path
    else
      render :new
    end
  end

  def destroy
    @post_image = PostImage.find(params[:id])
    @post_image.destroy
    redirect_to post_images_path
  end
  
  # 投稿データのストロングパラメータ
  private

  def post_image_params
    params.require(:post_image).permit(:shop_name, :image, :caption)
  end
end
