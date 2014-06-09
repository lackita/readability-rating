class CreateCodeSamples < ActiveRecord::Migration
  def change
    create_table :code_samples do |t|
      t.string :text

      t.timestamps
    end
  end
end
