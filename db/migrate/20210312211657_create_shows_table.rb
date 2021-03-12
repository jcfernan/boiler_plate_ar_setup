class CreateShowsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :shows do |t|
      t.string :title
      t.string :genre
      t.string :lead_actor
    end
  end
end
