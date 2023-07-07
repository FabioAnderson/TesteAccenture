# frozen_string_literal: true

class QuotePage < SitePrism::Page
  element :emailField, :id, 'email'
  element :usernameField, :id, 'username'
  element :passwordField, :id, 'password'
  element :confirmpasswordField, :id, 'confirmpassword'
  element :finishButton, :id, 'sendemail'
  element :loadingAlert, :id, 'LoadingPDF'
  element :sucessAlert, "div[class='sweet-alert showSweetAlert visible']"

  def preencher_dados_produto
    wait_until_emailField_visible
    emailField.set QUOTE[:email]

    wait_until_usernameField_visible
    usernameField.set QUOTE[:username]

    wait_until_passwordField_visible
    passwordField.set QUOTE[:password]

    wait_until_confirmpasswordField_visible
    confirmpasswordField.set QUOTE[:password]

    wait_until_finishButton_visible
    finishButton.click
  end

  def validar_sucesso
    wait_until_loadingAlert_visible
    wait_until_loadingAlert_invisible

    wait_until_sucessAlert_visible
    expect(sucessAlert.text).to eql "Sending e-mail success!\nOK"
  end
end
