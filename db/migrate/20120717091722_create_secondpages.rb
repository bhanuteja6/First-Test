class CreateSecondpages < ActiveRecord::Migration
  def change
    create_table :secondpages do |t|
      t.integer :rollnumber
      t.string :classname
      t.references :homepage

      t.timestamps
    end
    add_index :secondpages, :homepage_id
  end
end
