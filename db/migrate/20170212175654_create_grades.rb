class CreateGrades < ActiveRecord::Migration[5.0]
  def change
    create_table :grades do |t|
      t.string :math
      t.string :science
      t.string :history

      t.timestamps
    end
  end
end
