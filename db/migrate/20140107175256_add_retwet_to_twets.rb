class AddRetwetToTwets < ActiveRecord::Migration
  def change
    add_column :twets, :retwet_id, :integer
  end
end
