# encoding: utf-8
# language: pt
Funcionalidade: Acessar o sistema
 
Cenário: Deve preencher o campo email e senha do forumlário e logar com sucesso
	 Dado que eu estou na página do login
	 Quando eu preencher todos os campos
	 E clicar em "Log in"
	 Então não deve receber a mensagem "Usuario inválido!"