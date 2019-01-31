class CreateZips < ActiveRecord::Migration[5.2]
  def change
    create_table :zips do |t|
      t.string :zip_code
			t.belongs_to :city, index: true

      t.timestamps
    end
  end
end
