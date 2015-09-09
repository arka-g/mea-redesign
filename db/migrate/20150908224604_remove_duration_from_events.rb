class RemoveDurationFromEvents < ActiveRecord::Migration
  def change
    remove_column :events, :duration
    add_column :events, :end_time, :integer
  end
end
