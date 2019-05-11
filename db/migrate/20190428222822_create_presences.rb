class CreatePresences < ActiveRecord::Migration[5.2]
  def change
    create_table :presences do |t|

      t.timestamps
    end
  end
end
