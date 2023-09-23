programa
{
	// variável global
	
	
	funcao inicio()
	{
		caracter jogo1[3][3]
		inteiro l, c, linha, coluna, jogador = 1, ganhou = 0, jogadas = 0

		 para(l = 0; l < 3; l++){
		 	para(c = 0; c < 3; c++)
		 	     jogo1[l][c] = ' '
		 }

		 	faca{

			 // imprimindo tabuleiro
			 escreva("/n/n 0    1      2\n\n")
			 para(l = 0; l < 3; l++){
			 	para(c = 0; c < 3; c++){
			 		escreva(" ", jogo1[l][c], " ")
			 		se(c < 2)
			 		     escreva(" | ")
			 		     se(c == 2)
			 		          escreva("  ", l)
			 	}
			 	se(l < 2)
			 	      escreva("\n---------------")
			 	escreva("\n")
			 }
			 
			 // lendo coordenadas(li)

			  faca{
	           	faca{
			 		escreva("\nJogador ", jogador, " Digite linha e coluna da posição desejada: ")
					leia(linha, coluna)
	           
	           	}enquanto(linha < 0 ou linha > 2 ou coluna < 0 ou coluna > 2)	
			 }enquanto(jogo1[linha][coluna]  != ' ')
	
				// salvando coordenadas(salvei na matriz)
				se(jogador == 1){
					jogo1[linha][coluna] = '0'
					jogador++
				}
				senao{
					jogo1[linha][coluna] = 'X'
					jogador = 1
				}
				jogadas++
				// verificação de ganhador por linha(verifiquei se alguém ganhou) 
				para(l = 0; l < 3; l++){
					se(jogo1[l][0] == '0' e jogo1[l][1] == '0' e jogo1[l][2] == '0')
						ganhou = 1
				}
			 
			 	para(l = 0; l < 3; l++){
					se(jogo1[l][0] == 'X' e jogo1[l][1] == 'X' e jogo1[l][2] == 'X')
						ganhou = 2
	           	}
	           	// verificação de ganhador por colunas
	           	para(c = 0; c < 3; c++){
					se(jogo1[0][c] == '0' e jogo1[1][c] == '0' e jogo1[2][c] == '0')
						ganhou = 1
				}
			 
			 	para(c = 0; c < 3; c++){
					se(jogo1[0][c] == 'X' e jogo1[0][c] == 'X' e jogo1[2][c] == 'X')
						ganhou = 2
			 	}
			 	// verificação de ganhador na diagonal principal
			 	
			 		se(jogo1[0][0] == '0' e jogo1[1][1] == '0' e jogo[2][2])  == '0')
			 			ganhou = 1
	
			 		se(jogo1[0][0] == 'X' e jogo1[1][1] == 'X' e jogo[2][2]) == 'X')
			 			ganhou = 2
	
			 	// verificação de ganhador na diagonal secundária  
					se(jogo1[0][2] == '0' e jogo1[1][1] == '0' e jogo1[2][0] == '0')
						ganhou = 1
	
					se(jogo1[0][2] == 'X' e jogo1[1][1] == 'X' e jogo1[2][0] == 'X')
						ganhou = 2
		 	}enquanto(ganhou == 0 e jogadas < 9)
	}
}
		 	
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2227; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */