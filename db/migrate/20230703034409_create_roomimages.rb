class CreateRoomimages < ActiveRecord::Migration[6.1]
  def change
    create_table :roomimages do |t|
      t.string :name
      t.string :avatar_path

      t.timestamps
    end
  end
end
