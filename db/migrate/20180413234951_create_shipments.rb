class CreateShipments < ActiveRecord::Migration[5.2]
  def change
    create_table :shipments do |t|
      t.string :fromCompany
      t.string :fromPhone
      t.string :fromStreet1
      t.string :fromStreet2
      t.string :fromCity
      t.string :fromState
      t.string :fromZip
      t.string :fromCountry
      t.string :toCompany
      t.string :toPhone
      t.string :toStreet1
      t.string :toStreet2
      t.string :toCity
      t.string :toState
      t.string :toZip
      t.string :toCountry
      t.string :length
      t.string :width
      t.string :height
      t.string :weight

      t.timestamps
    end
  end
end
