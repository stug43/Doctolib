class CreateDoctorSpecLists < ActiveRecord::Migration[5.2]
  def change
    create_table :doctor_spec_lists do |t|
			t.belongs_to :speciality, :doctor, index: true

      t.timestamps
    end
  end
end
