class CreateHomepages < ActiveRecord::Migration
  def change
    create_table :homepages do |t|
      t.string :name
      t.string :collegename

      t.timestamps
    end
  end
end
