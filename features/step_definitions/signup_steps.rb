# encoding: utf-8
 Dado /^que eu estou na página do cadastro$/ do
   visit ('http://localhost:3000/auth/register/cmon_let_me_in')
 end
 
 Quando /^eu deixar o email em branco, preencher as senhas$/ do
   page.fill_in "Email", :with=> ""
   page.fill_in "new password", :with=> "12345678"
   page.fill_in "password confirmation", :with=> "12345678"
 end
 
 E "clicar em Sign up" do
   page.click_button ("Sign up")
 end
 
 Então /^deve receber a mensagem "(.*?)"$/ do |mensagem|
   expect(page).to have_no_content(mensagem)
 end