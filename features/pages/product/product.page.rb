# frozen_string_literal: true

class ProductPage < SitePrism::Page
  element :startDateField, :id, 'startdate'
  element :insuranceSumField, :id, 'insurancesum'
  element :meritField, :id, 'meritrating'
  element :damageField, :id, 'damageinsurance'
  element :euroField, :xpath, '//*[@id="insurance-form"]/div/section[3]/div[5]/p/label[1]/span'
  element :legalField, :xpath, '//*[@id="insurance-form"]/div/section[3]/div[5]/p/label[2]/span'
  element :carField, :id, 'courtesycar'
  element :nextButton, :id, 'nextselectpriceoption'

  def preencher_dados_produto
    wait_until_startDateField_visible
    startDateField.set PRODUCT[:start_date]

    wait_until_insuranceSumField_visible
    insuranceSumField.select PRODUCT[:insurance_sum]

    wait_until_meritField_visible
    meritField.select PRODUCT[:merit]

    wait_until_damageField_visible
    damageField.select PRODUCT[:damage_insurance]

    case PRODUCT[:optional_products]
    when 'Euro Protection'
      wait_until_euroField_visible
      euroField.click
    when 'Legal Defense Insurance'
      wait_until_legalField_visible
      legalField.click
    end

    wait_until_carField_visible
    carField.select PRODUCT[:car]


    wait_until_nextButton_visible
    nextButton.click
  end
end
