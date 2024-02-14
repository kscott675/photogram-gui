class PhotosController < ApplicationController
  def index
    #should have a form to add a new photo

    render({ :template => "photo_templates/show" })
  end

  def show
    #display the details of a photo

    #displays the comments that have been made on the photo

    #have a form to add a comment to the photo

    render({ :template => "photo_templates/show" })
  end
end
