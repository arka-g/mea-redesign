class AddTimeToEvents < ActiveRecord::Migration
  def change
    add_column :events, :start_time, :integer
    add_column :events, :duration, :integer
  end
end
