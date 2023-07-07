# frozen_string_literal: true

class PricePage < SitePrism::Page
  element :selectSilverField, :xpath, '//*[@id="priceTable"]/tfoot/tr/th[2]/label[1]/span'
  element :selectGoldField, :xpath, '//*[@id="priceTable"]/tfoot/tr/th[2]/label[1]/span'
  element :selectPlatinumField, :xpath, '//*[@id="priceTable"]/tfoot/tr/th[2]/label[1]/span'
  element :selectUltimateField, :xpath, '//*[@id="priceTable"]/tfoot/tr/th[2]/label[1]/span'
  element :nextButton, :id, 'nextsendquote'


  def selecionar_preco
    price_option = rand(1..4)
    case price_option
    when 1
      wait_until_selectSilverField_visible
      selectSilverField.click
    when 2
      wait_until_selectGoldField_visible
      selectGoldField.click
    when 3
      wait_until_selectPlatinumField_visible
      selectPlatinumField.click
    when 4
      wait_until_selectUltimateField_visible
      selectUltimateField.click
    end

    wait_until_nextButton_visible
    nextButton.click
  end
end
