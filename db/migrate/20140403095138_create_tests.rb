class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :field1

      t.timestamps
    end
  end
end
