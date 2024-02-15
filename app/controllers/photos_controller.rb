class PhotosController < ApplicationController
  def index
    @photos = Photo.all
    render({ :template => "photo_templates/index" })
  end

  def show
    @photo = Photo.find(params.fetch("photo_id"))
    @comments = @photo.comments

    render({ :template => "photo_templates/show" })
  end

  def post
    #create a new photo

    p = Photo.new(params)

    if p.save
      @message = "Photo was successfully created."
    else
      @message = "Photo was not created."
    end
    redirect_to photos_path
  end

  def delete
    #delete a photo
    @photo = Photo.find(params.fetch("photo_id"))

    @photo.destroy
    redirect_to photos_path
  end

  def update_photo
    @photo = Photo.find(params.fetch("photo_id"))
    photo.image = params[:image_url]
    photo
    photo.save
  end

  def add_comment
    @photo = Photo.find(params.fetch("photo_id"))

    comment = Comment.new
    comment.body = params.fetch("input_comment")
    comment.author_id = params.fetch("author_id")
    comment.photo_id = params.fetch("photo_id")

    comment.save
    redirect_to ("/photos/#{@photo.id}")
  end
end
