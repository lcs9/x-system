class AddUserRefToPresences < ActiveRecord::Migration[5.2]
  def change
    add_reference :presences, :user, foreign_key: true
  end
end
