require 'test_helper'

class ShipmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shipment = shipments(:one)
  end

  test "should get index" do
    get shipments_url, as: :json
    assert_response :success
  end

  test "should create shipment" do
    assert_difference('Shipment.count') do
      post shipments_url, params: { shipment: { fromCity: @shipment.fromCity, fromCompany: @shipment.fromCompany, fromCountry: @shipment.fromCountry, fromPhone: @shipment.fromPhone, fromState: @shipment.fromState, fromStreet1: @shipment.fromStreet1, fromStreet2: @shipment.fromStreet2, fromZip: @shipment.fromZip, height: @shipment.height, length: @shipment.length, toCity: @shipment.toCity, toCompany: @shipment.toCompany, toCountry: @shipment.toCountry, toPhone: @shipment.toPhone, toState: @shipment.toState, toStreet1: @shipment.toStreet1, toStreet2: @shipment.toStreet2, toZip: @shipment.toZip, weight: @shipment.weight, width: @shipment.width } }, as: :json
    end

    assert_response 201
  end

  test "should show shipment" do
    get shipment_url(@shipment), as: :json
    assert_response :success
  end

  test "should update shipment" do
    patch shipment_url(@shipment), params: { shipment: { fromCity: @shipment.fromCity, fromCompany: @shipment.fromCompany, fromCountry: @shipment.fromCountry, fromPhone: @shipment.fromPhone, fromState: @shipment.fromState, fromStreet1: @shipment.fromStreet1, fromStreet2: @shipment.fromStreet2, fromZip: @shipment.fromZip, height: @shipment.height, length: @shipment.length, toCity: @shipment.toCity, toCompany: @shipment.toCompany, toCountry: @shipment.toCountry, toPhone: @shipment.toPhone, toState: @shipment.toState, toStreet1: @shipment.toStreet1, toStreet2: @shipment.toStreet2, toZip: @shipment.toZip, weight: @shipment.weight, width: @shipment.width } }, as: :json
    assert_response 200
  end

  test "should destroy shipment" do
    assert_difference('Shipment.count', -1) do
      delete shipment_url(@shipment), as: :json
    end

    assert_response 204
  end
end
