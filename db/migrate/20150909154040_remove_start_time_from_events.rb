class RemoveStartTimeFromEvents < ActiveRecord::Migration
  def change
    remove_column :events, :start_time
    remove_column :events, :end_time
    add_column :events, :start_time, :string
    add_column :events, :end_time, :string
  end
end
