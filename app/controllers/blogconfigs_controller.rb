class BlogconfigsController < ApplicationController
  layout 'blogconfigs'

  def index
    @blogconfig = Blogconfig.find 1
  end

  def edit
    @blogconfig = Blogconfig.find 1

    if request.patch? then
      @blogconfig.update blogconfig_params
      redirect_to '/blogconfigs'
    end
  end

  private
  def blogconfig_params
    params.require(:blogconfig).permit(:title, :subtitle, :stylename)
  end
end
