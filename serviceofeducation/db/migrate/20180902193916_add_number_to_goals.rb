class AddNumberToGoals < ActiveRecord::Migration[5.2]
  def change
    add_column :goals, :number, :integer
  end
end
