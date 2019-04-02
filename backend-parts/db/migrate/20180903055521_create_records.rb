class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.integer :studypage
      t.string :studyimage

      t.timestamps
    end
  end
end
