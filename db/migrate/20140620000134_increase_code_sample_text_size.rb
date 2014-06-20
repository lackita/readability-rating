class IncreaseCodeSampleTextSize < ActiveRecord::Migration
  def change
    change_column :code_samples, :text, :text
  end
end
