# frozen_string_literal: true

class VehiclePage < SitePrism::Page
  set_url '/101/app.php'
  element :makeField, :id, 'make'
  element :modelField, :id, 'model'
  element :cylinderField, :id, 'cylindercapacity'
  element :engineField, :id, 'engineperformance'
  element :manufactureDateField, :id, 'dateofmanufacture'
  element :seatNumberField, :id, 'numberofseats'
  element :rightHandField, :xpath, '//*[@id="insurance-form"]/div/section[1]/div[7]/p/label[1]/span'
  element :leftHandField, :xpath, '//*[@id="insurance-form"]/div/section[1]/div[7]/p/label[2]/span'
  element :seatMotorcycleField, :id, 'numberofseatsmotorcycle'
  element :fuelField, :id, 'fuel'
  element :payloadField, :id, 'payload'
  element :weightField, :id, 'totalweight'
  element :priceField, :id, 'listprice'
  element :licenseField, :id, 'licenseplatenumber'
  element :annualMileageField, :id, 'annualmileage'
  element :nextButton, :id, 'nextenterinsurantdata'

  def preencher_dados_veiculo
    wait_until_makeField_visible
    makeField.select VEHICLE[:make]

    wait_until_modelField_visible
    modelField.select VEHICLE[:model]

    wait_until_cylinderField_visible
    cylinderField.set VEHICLE[:cylinder]

    wait_until_engineField_visible
    engineField.set VEHICLE[:performance]

    wait_until_manufactureDateField_visible
    manufactureDateField.set VEHICLE[:dateofmanufacture]

    wait_until_seatNumberField_visible
    seatNumberField.select VEHICLE[:seats]

    if VEHICLE[:righHand]
      wait_until_rightHandField_visible
      rightHandField.click
    else
      wait_until_leftHandField_visible
      leftHandField.click
    end
    wait_until_seatMotorcycleField_visible
    seatMotorcycleField.select VEHICLE[:seatsMotorcycle]

    wait_until_fuelField_visible
    fuelField.select VEHICLE[:fuel]

    wait_until_payloadField_visible
    payloadField.set VEHICLE[:payload]

    wait_until_weightField_visible
    weightField.set VEHICLE[:weight]

    wait_until_priceField_visible
    priceField.set VEHICLE[:price]

    wait_until_licenseField_visible
    licenseField.set VEHICLE[:license]

    wait_until_annualMileageField_visible
    annualMileageField.set VEHICLE[:annualMileage]

    wait_until_nextButton_visible
    nextButton.click
  end
end
