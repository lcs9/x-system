class CreateContracts < ActiveRecord::Migration[5.2]
  def change
    create_table :contracts do |t|
    	t.string :journey
    	t.string :hours
    	t.string :locations
    	t.string :department
    	t.string :document
    	t.string :office
      t.timestamps
    end
  end
end
