class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
    	t.string :name
    	# 3 statuses: todo, progress, done
    	t.string :status, :default => "todo"
      t.belongs_to :user
    	t.timestamps
    end
  end
end
