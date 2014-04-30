class CreateApimozs < ActiveRecord::Migration
  def change
    create_table :apimozs do |t|
      t.string :link

      t.timestamps
    end
  end
end
