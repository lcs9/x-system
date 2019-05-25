# encoding: utf-8
 Dado /^que eu estou na página do login$/ do
   visit ('http://localhost:3000/auth/login')
 end
 
 Quando /^eu preencher todos os campos$/ do
   page.fill_in "Email", :with=> "rivaldo@cin.com"
   page.fill_in "password", :with=> "12345678"
 end
 
 E /^clicar em "(.*?)"$/ do |logar|
   page.click_button (logar)
 end
 
 Então /^não deve receber a mensagem "(.*?)"$/ do |mensagem|
   expect(page).to have_no_content(mensagem)
 end