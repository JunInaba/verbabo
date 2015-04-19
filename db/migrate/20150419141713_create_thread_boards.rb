class CreateThreadBoards < ActiveRecord::Migration
  def change
    create_table :thread_boards do |t|
      t.string :title

      t.timestamps
    end
  end
end
