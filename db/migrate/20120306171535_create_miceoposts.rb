class CreateMiceoposts < ActiveRecord::Migration
  def change
    create_table :miceoposts do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
