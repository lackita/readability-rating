class AddScoreToRating < ActiveRecord::Migration
  def change
    add_column :ratings, :score, :number
  end
end
