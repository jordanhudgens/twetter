class RetwetsController < ApplicationController
  def new
      @retwet = current_user.twets.new(retwet_params)
      if @retwet.valid?
          flash[:success] = "Your Retwet has been published"
          redirect_to :action => :index and return
      else
          flash[:error] = "Your retwet could not be shared"
          render :action => :index and return
      end
  end

  def index
  end

  private

  def retwet_params
      params.require(:retwet_id).permit(:content)
  end

end
