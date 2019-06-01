class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end

  def new
    @photo = Photo.new
  end  

  def create
    @photo = Photo.new(photo_params)  #params以拿到使用者從表單傳資的資料
    @photo.save

    redirect_to photos_url
  end
  # 本create方法須放在private的上面

  def show
    @photo = Photo.find(params[:id])
  end

  private

  def photo_params
    params.require(:photo).permit(:title, :date, :description, :file_location)
    # "require(:photo)" 用來確認使用者上傳的參數名為photo
  end

end
