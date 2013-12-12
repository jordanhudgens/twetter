class ProfileController < ApplicationController
  def index
      @profile = User.where(username: :username)
      @user_id = @profile.uniq.pluck(:id)
      @printable_id = @user_id[0]
      @twets = Twet.all.where(user_id: @printable_id)
  end
end
