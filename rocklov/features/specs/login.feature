#language: pt

Funcionalidade: Login
    Sendo um usuário cadastrado
    Quero acessar o sistema da Rocklov
    Para que eu possa anunciar meus equipamentos musicais

    @temp
    Cenario: Login do usuário

        Dado que acesso a página principal
        Quando submeto minhas credenciais com "gustavo@hotmail.com" e "pw@123"
        Então sou redirecionado para o Dashboard

    Esquema do Cenario: Tentar logar

        Dado que acesso a página principal
        Quando submeto minhas credenciais com "<email_input>" e "<senha_input>"
        Então vejo a mensagem de alerta: "<mensagem_output>" 

        Exemplos:
            | email_input           | senha_input | mensagem_output                 |
            | gustavo@hotmail.com   | abc123      | Usuário e/ou senha inválidos.   |
            | gustavo@404.com       | pw@123      | Usuário e/ou senha inválidos.   |
            | gustavo&hotmail.com   | abc123      | Oops. Informe um email válido!  |
            |                       | abc123      | Oops. Informe um email válido!  |
            | gustavo@hotmail.com   |             | Oops. Informe sua senha secreta!|
 