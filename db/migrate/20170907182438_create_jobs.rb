class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :description
      t.string :location
      t.integer :cost
      t.string :title
      t.string :category
      t.integer :user_id

      t.timestamps
    end
  end
end
