# encoding: utf-8
# language: pt
Funcionalidade: Cadastrar no sistema
 
Cenário: Deve deixar em branco o campo email, preencher a senha e receber uma mensagem de erro
	 Dado que eu estou na página do cadastro
	 Quando eu deixar o email em branco, preencher as senhas
	 E clicar em "Sign up"
	 Então deve receber a mensagem "Email can't be blank!"