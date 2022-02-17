#language: pt

Funcionalidade: Cadastro de Anúncios
    Sendo usuário cadastro no Rocklov que possui equipamentos musicais
    Quero cadastrar meus equipamentos 
    Para que possa disponibilizados para locação

   Cenario: Novo equipo

    Dado que estou logado como "Gustavo@yahoo.com" e "12345678"
        E que acesso o formulario de cadastro de anúncios
        E que eu tenho o seguinte equipamento:
        | thumb     | fender-sb.jpg |
        | nome      | Fender Strato |
        | categoria | Cordas        |
        | preco     | 200           |
    Quando submeto o cadastro desse item
    Então devo ver esse item no meu Dashboard