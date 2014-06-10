class AddTimingToRatings < ActiveRecord::Migration
  def change
    add_column :ratings, :timing, :integer
  end
end
