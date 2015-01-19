class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.datetime :deadline
      t.boolean :is_done

      t.timestamps

    end
  end
end
