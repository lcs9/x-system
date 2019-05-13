# encoding: utf-8
 Dado /^que eu estou na página do login$/ do
   visit ('http://localhost:3000/auth/login')
 end
 
 Quando /^eu preencher todos os campos$/ do
   page.fill_in "Email", :with=> "rivaldo@cin.com"
   fill_in "Password", :with=> "12345678"
 end
 
 E /^clicar em "(.*?)"$/ do |logar|
   find_button(logar).click
   save_and_open_page
 end
 
 Então /^deve ver receber a mensagem "(.*?)"$/ do |mensagem|
   page.has_content?(mensagem)
 end