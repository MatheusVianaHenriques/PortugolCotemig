programa {
  funcao inicio() {
    //Variáveis
    cadeia cpf, cpfMaiorAluguel = ""
    inteiro carro
    inteiro quantidadeDiarias
    inteiro formaPagamento
    cadeia formaPagamentoMaisUtilizada
    real lucro, lucroTotal=0, maiorLucro = 0
    real precoDiaria
    inteiro pix=0, cartao=0, cheque=0
    inteiro renault= 0, fiat= 0, jeep=0, cronos = 0
    inteiro porcentagem
    cadeia veiculoMaisAlugado
    inteiro quantidadeCadastros = 0

    escreva("Digite o CPF como 0 para finalizar o programa.\n")
    enquanto(cpf!="0"){
      //leitura
      escreva("Digite o CPF: ")
      leia(cpf)

      escreva("Tipos de carro: \n")
      escreva("1-Renault Kwid 1.0\n")
      escreva("2-Fiat Argo 1.0\n")
      escreva("3- Jeep Renegade 1.3\n")
      escreva("4- Fiat Cronos 1.3\n")
      leia(carro)

      escolha(carro){
        caso 1:
        precoDiaria = 99.38
        renault += 1
        pare
        caso 2:
        precoDiaria = 130.48
        fiat += 1
        pare
        caso 3:
        precoDiaria = 267.98
        jeep += 1
        pare
        caso 4:
        precoDiaria = 189.98
        cronos += 1
        pare
      }

      escreva("Quantidade de diárias: ")
      leia(quantidadeDiarias)
      //Saída
      lucro = precoDiaria*quantidadeDiarias
      se(maiorLucro<lucro){
        maiorLucro = lucro
        cpfMaiorAluguel = cpf
      }
      escreva("TOTAL= R$",lucro,"\n")
      lucroTotal = lucroTotal + lucro
      //pagamento
      escreva("Forma de pagamento: \n")  
      escreva("1-PIX \n")
      escreva("2-Cartão\n")
      escreva("3-Cheque\n")
      leia(formaPagamento)
      escolha(formaPagamento){
        caso 1:
        pix += 1
        pare
        caso 2:
        cartao += 1
        pare
        caso 3:
        cheque += 1
        pare
      }
      quantidadeCadastros = quantidadeCadastros + 1
      limpa()
    }

//Determinar o veículo mais alugado
    se(renault>fiat e renault>jeep e renault>cronos){
      veiculoMaisAlugado = "Renaul Kwid 1.0"
    }
    senao se(fiat>renault e fiat>jeep e fiat>cronos){
      veiculoMaisAlugado = "Fiat Argo 1.0"
    }
    senao se(jeep>renault e jeep>fiat e jeep>cronos){
      veiculoMaisAlugado = "Jeep Renegade 1.3"
    }
    senao se(cronos>renault e cronos>fiat e cronos>jeep){
      veiculoMaisAlugado = "Fiat Cronos 1.3"
    }
    senao{
      veiculoMaisAlugado = "Ouve empate entre dois veículos."
    }
//Determinar o pagamento mais utilizado e sua porcentagem
    se(pix>cartao e pix>cheque){
      formaPagamentoMaisUtilizada = "PIX"
      porcentagem = (pix/quantidadeCadastros)*100
    }
    senao se(cartao>pix e cartao>cheque){
      formaPagamentoMaisUtilizada = "Cartão"
      porcentagem = (cartao/quantidadeCadastros)*100
    }
    senao se(cheque>pix e cheque>cartao){
      formaPagamentoMaisUtilizada = "Cheque"
      porcentagem = (cheque/quantidadeCadastros)*100
    }
    senao{
      formaPagamentoMaisUtilizada = "Ouve empate entre duas formas de pagamento."
    }
//Saída 2
    escreva("A)LUCRO TOTAL: R$",lucroTotal,"\n")
    escreva("B)O VEÍCULO MAIS ALUGADO FOI: ",veiculoMaisAlugado,"\n")
    escreva("C)A FORMA DE PAGAMENTO MAIS UTILIZADA FOI: ",formaPagamentoMaisUtilizada,", com ",porcentagem,"% de uso\n")
    escreva("D)O MAIOR ALUGUEL REALIZADO FOI DE: R$",maiorLucro," do cliente: ",cpfMaiorAluguel)    
  }
}
