class Admin::CategoriesController < ApplicationController
  before_action :require_admin
  def index
  end

  private
  def require_admin
    unless current_admin?
      response.status = 404
      render file: "/public/404"
    end
  end
end
