class AddDayToRecords < ActiveRecord::Migration[5.2]
  def change
    add_column :records, :day, :string
  end
end
