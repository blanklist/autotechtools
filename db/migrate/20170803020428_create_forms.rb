class CreateForms < ActiveRecord::Migration[5.1]
  def change
    create_table :forms do |t|
      t.string  :desc
      t.string  :body

      t.timestamps
    end
  end
end
