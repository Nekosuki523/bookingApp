class CreateRs < ActiveRecord::Migration[6.1]
  def change
    create_table :rs do |t|
      t.string :name
      t.string :avatar_path

      t.timestamps
    end
  end
end
