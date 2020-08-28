#encoding: utf-8 (colocar o cerquilha antes)
#!/usr/bin/env ruby (colocar o cerquilha antes)


Quando("eu faco login com {string} e {string}") do |email, password|
  visit "/"
  find("#emailId").set email
  find("#passId").set password
  click_button "Entrar"
end  
Então("devo ser autenticado") do
  js_script = 'window.localStorage.getItem("default_auth_token");' #validando info do localstorage do navegador
  page.execute_script(js_script)
end
E("devo ver {string} na area logada") do |expect_name|  
  user = find(".sidebar-wrapper .user .info span")
  expect(user.text).to eql expect_name
end