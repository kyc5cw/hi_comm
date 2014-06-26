class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :name
      t.belongs_to :boardable, polymorphic: true
      t.timestamps
    end
  end
end
