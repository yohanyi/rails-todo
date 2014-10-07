class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
    	t.belongs_to :users

    	t.string :name
    	t.string :status, :default => "todo"
    	t.timestamps
    end
  end
end
