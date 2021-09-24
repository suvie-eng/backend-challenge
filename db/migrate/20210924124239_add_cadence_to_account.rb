class AddCadenceToAccount < ActiveRecord::Migration[6.1]
  def change
    add_column :accounts, :cadence, :integer
    add_index :accounts, :cadence
  end
end
