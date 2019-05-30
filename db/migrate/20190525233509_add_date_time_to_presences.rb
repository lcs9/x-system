class AddDateTimeToPresences < ActiveRecord::Migration[5.2]
  def change
  	add_column :presences, :in, :string
  	add_column :presences, :out, :string
  	add_column :presences, :date, :string
  end
end
