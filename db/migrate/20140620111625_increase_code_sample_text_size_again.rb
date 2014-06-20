class IncreaseCodeSampleTextSizeAgain < ActiveRecord::Migration
  def change
    change_column :code_samples, :text, :text, :limit => nil
  end
end
