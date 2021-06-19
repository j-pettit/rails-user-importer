class UploadsController < ApplicationController
  def index
    @uploads = Upload.all
  end

  def import
    Upload.import_user_csv(params[:file])
    redirect_to root_url
  end
end
