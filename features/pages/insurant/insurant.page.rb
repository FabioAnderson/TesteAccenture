# frozen_string_literal: true

class InsurantPage < SitePrism::Page
  element :nameField, :id, 'firstname'
  element :lastNameField, :id, 'lastname'
  element :birthField, :id, 'birthdate'
  element :maleField, :xpath, '//*[@id="insurance-form"]/div/section[2]/div[4]/p/label[1]/span'
  element :femaleField, :xpath, '//*[@id="insurance-form"]/div/section[2]/div[4]/p/label[2]/span'
  element :countryField, :id, 'country'
  element :zipcodeField, :id, 'zipcode'
  element :occupationField, :id, 'occupation'
  element :speedingField, :xpath, '//*[@id="insurance-form"]/div/section[2]/div[10]/p/label[1]/span'
  element :bungeeJumpField, :xpath, '//*[@id="insurance-form"]/div/section[2]/div[10]/p/label[2]/span'
  element :cliffDivingField, :xpath, '//*[@id="insurance-form"]/div/section[2]/div[10]/p/label[3]/span'
  element :skydivingField, :xpath, '//*[@id="insurance-form"]/div/section[2]/div[10]/p/label[4]/span'
  element :otherField, :xpath, '//*[@id="insurance-form"]/div/section[2]/div[10]/p/label[5]/span'
  element :nextButton, :id, 'nextenterproductdata'

  def preencher_dados_segurado
    wait_until_nameField_visible
    nameField.set INSURANT[:name]

    wait_until_lastNameField_visible
    lastNameField.set INSURANT[:last_name]

    wait_until_birthField_visible
    birthField.set INSURANT[:birth]

    if INSURANT[:is_male]
      wait_until_maleField_visible
      maleField.click
    else
      wait_until_femaleField_visible
      femaleField.click
    end

    wait_until_countryField_visible
    countryField.select INSURANT[:country]

    wait_until_zipcodeField_visible
    zipcodeField.set INSURANT[:zipcode]

    wait_until_occupationField_visible
    occupationField.select INSURANT[:occupation]

    case INSURANT[:hobbies]
    when 'Speeding'
      wait_until_speedingField_visible
      speedingField.click
    when 'Bungee Jump'
      wait_until_bungeeJumpField_visible
      bungeeJumpField.click
    when 'Cliff Diving'
      wait_until_cliffDivingField_visible
      cliffDivingField.click
    when 'Skydiving'
      wait_until_skydivingField_visible
      skydivingField.click
    when 'Other'
      wait_until_otherField_visible
      otherField.click
    end

    wait_until_nextButton_visible
    nextButton.click
  end
end
