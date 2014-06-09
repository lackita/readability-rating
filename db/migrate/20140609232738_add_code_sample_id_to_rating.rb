class AddCodeSampleIdToRating < ActiveRecord::Migration
  def change
    add_column :ratings, :code_sample_id, :number
  end
end
