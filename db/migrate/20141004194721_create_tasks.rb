class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
    	t.string :name
    	t.boolean :status, :default => false
    	t.timestamps
    end
  end
end
