require 'easypost'

class Label
  def initialize
    EasyPost.api_key = 'cueqNZUb3ldeWTNX7MU3Mel8UXtaAMUi'
  end

  def build_doc(shipment)
    to_address = EasyPost::Address.create(
        :company => shipment.toCompany,
        :phone => shipment.toPhone,
        :street1 => shipment.toStreet1,
        :street2 => shipment.toStreet2,
        :city => shipment.toCity,
        :state => shipment.toState,
        :zip => shipment.toZip,
        :country => shipment.toCountry
    )
    from_address = EasyPost::Address.create(
        :company => shipment.fromCompany,
        :phone => shipment.fromPhone,
        :street1 => shipment.fromStreet1,
        :street2 => shipment.fromStreet2,
        :city => shipment.fromCity,
        :state => shipment.fromState,
        :zip => shipment.fromZip,
        :country => shipment.fromCountry
    )

    parcel = EasyPost::Parcel.create(
        :width => shipment.width,
        :length => shipment.length,
        :height => shipment.height,
        :weight => shipment.weight
    )

    shipment = EasyPost::Shipment.create(
        :to_address => to_address,
        :from_address => from_address,
        :parcel => parcel
    )

    shipment.buy(
        :rate => shipment.lowest_rate
    )

    shipment.insure(amount: 100)

    return shipment.postage_label.label_url
  end
end