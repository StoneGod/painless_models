class CreateOrganizations < ActiveRecord::Migration[6.0]
  def change
    create_table :organizations do |t|
      t.string :background
      t.belongs_to :user

      t.timestamps
    end
  end
end
