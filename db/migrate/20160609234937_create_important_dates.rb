class CreateImportantDates < ActiveRecord::Migration
  def change
    create_table :important_dates do |t|
      t.string :name

      t.timestamps

    end
  end
end
