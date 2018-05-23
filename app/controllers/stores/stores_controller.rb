class Stores::StoresController < ApplicationController
  helper_method :current_store
  before_action :store_not_found

  def store_not_found
    redirect_to root_path unless current_store
  end

  def current_store
    @current_store ||= Store.find_by(slug: params[:store])
  end
end
