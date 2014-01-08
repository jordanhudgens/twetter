class RetwetsController < ApplicationController
  def create
      @retwet = current_user.twets.create(retwet_params)
      if @retwet.valid?
          flash[:success] = "Your Retwet has been published"
          redirect_to twets_path and return
      else
          flash[:error] = "Your retwet could not be shared"
          render :action => :index and return
      end
  end

  def index
  end

  private

  def retwet_params
      params.require(:retwet).permit(:retwet_id, :content)
  end

end
