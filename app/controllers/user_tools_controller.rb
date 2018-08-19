class UserToolsController < ApplicationController
  before_action :check_logged_in, only: [:index, :show, :edit]
  before_action :check_admin, only: [:index]
  before_action :admin_or_mine, only: [:show, :edit]
  before_action :find_user, only: [:show, :edit]

  def index
    @users = User.all
  end

  def show
  end

  def edit
  end

  private

  def find_user
    @user = User.find(params[:user_id])
  end
end
