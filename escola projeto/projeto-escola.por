programa
{
	inclua biblioteca Util
	inclua biblioteca Calendario
	
	funcao inicio()
	{
		//variaveis 
		caracter tipo
		
		//variaveis globais do estudante
		real pontos[10]
		caracter status

		faca {
			escreva ("Escola ED++")
			escreva ("\n,um plus de ensino em sua vida\n")
			escreva("\n1 - BÁSICO\n2 - MÉDIO\n3 - GRADUAÇÃO\n4 - PÓS\n5 - MESTRADO\n6 - SAIR\n")
			escreva("DIGITE O CÓDIGO DA OPÇÃO SELECIONADA: ")
			leia (tipo)
			se (tipo =='1'){
				limpa()
				escreva ("Escola ED++")
				escreva ("\n,um plus de ensino em sua vida\n")
				escreva("\nENSINO BÁSICO")

				dadosEstudante()
	
				escreva("Status: Digite 1 (Ativa) ou 2 (Inativa): ")
				leia(status)
				
				se(status == '1'){
					real notaAtual = notas(status)

					//regras de negócios para estudante do ensino básico
					inteiro diaAniversario
					inteiro diaAtual = Calendario.dia_mes_atual()
	
					limpa()
					escreva ("\nDigite o dia do seu aniversario: ")
					leia(diaAniversario)
					se(diaAniversario == diaAtual){
						notaAtual = (notaAtual * 0.10) + notaAtual
						escreva("\nO total de pontos do estudante é ", notaAtual, "\n")
					}
					senao{
						escreva("\nO total de pontos do estudante é ", notaAtual, "\n")
					}
				}
				senao {
					escreva("\nA matrícula do aluno esta inativa\n")
				}
				
				Util.aguarde(2000)
				limpa()
			}
			senao se (tipo =='2'){
				limpa()
				escreva ("Escola ED++")
				escreva ("\n,um plus de ensino em sua vida\n")
				escreva("\nENSINO MÉDIO")

				dadosEstudante()
	
				escreva("Status: Digite 1 (Ativa) ou 2 (Inativa): ")
				leia(status)
				
				inteiro indice = 0 
				caracter movimentos[10]
				real notaAtual = 0.0
				
				caracter continuar = 'S'
				se(status == '1'){
					enquanto (continuar != 'N'){
						se(indice < 10){
							escreva ("\nTotal atual: ", notaAtual,"\n")
							escreva("MOVIMENTO ", indice + 1," - Digite I (inclusão de nota) ou R (retirada nota): ")
							leia (movimentos[indice])
							
							enquanto(movimentos[indice] != 'I' e movimentos[indice] != 'i' e movimentos[indice] != 'R' e movimentos[indice] != 'r'){
								escreva("\n  ERRO DE DIGITAÇÃO!\n")
								escreva ("\nTotal atual: ", notaAtual)
								escreva("\nMOVIMENTO ", indice + 1," - Digite I (inclusão de nota) ou R (retirada nota): ")
								leia (movimentos[indice])
							}

							escreva("Valor movimento: ")
							leia (pontos[indice])
							    		
							se(movimentos[indice] == 'I' ou movimentos[indice] == 'i'){
						    		notaAtual = notaAtual + pontos[indice]
						    	}
						    	senao se (movimentos[indice] == 'R' ou movimentos[indice] == 'r'){
						    		enquanto(pontos[indice] > notaAtual){
						    			escreva("\n  A SUA NOTA FICOU NEGATIVA\n")
						    			escreva ("\nTotal atual: ", notaAtual,"\n")
						    			escreva("Digite um novo valor para retirada de nota: ")
									leia (pontos[indice])	
						    		}
						    		notaAtual = notaAtual - pontos[indice]
						    	}
						    		indice++	
		
						    		escreva("Continuar? Digite S (Sim) ou N (Não): ")
						    		leia (continuar)
							}		
						senao{
							escreva("\nNÃO É POSSÍVEL INCLUIR OU RETIRAR NOTAS\n")
							continuar = 'N'
						}
					}
					limpa()
					//regras de negócios para estudante do ensino médio
					caracter imprimirBoletim
			    		inteiro impressoesBoletim = 0
			    		
			    		escreva ("\nDeseja solicitar impressão do boletim? Digite S/N: ")
			    		leia(imprimirBoletim)
			    		
		    		
			    		se(imprimirBoletim == 'S' e impressoesBoletim < 4){
			    			escreva("\nO total de pontos do estudante é ", notaAtual, "\n")
			    			
			    			impressoesBoletim++
			    			escreva("\nBOLETIM\n")
			    			para(inteiro i = 0; i < indice; i++){
			    				se(movimentos[i] == 'I'){
			    					escreva("Inclusão de nota: ")
			    					escreva(pontos[i], "\n")
			    				}
			    				senao{
			    					escreva("Retirada de nota: ")
			    					escreva(pontos[i], "\n")
			    				}
			    			}
			    			
			    		}
			    		senao se (imprimirBoletim == 'S' e impressoesBoletim > 3){
			    			escreva("Você ultrapassou o limite de emissões por mês")
			    		}
			    		senao{
			    			escreva("\nO total de pontos do estudante é ", notaAtual, "\n")
			    		}
				}
				senao{
					escreva("\nA matrícula do aluno esta inativa\n")
				}
				
		    		Util.aguarde(3000)
		    		limpa()
				
			}
			senao se (tipo =='3'){
				limpa()
				escreva ("Escola ED++")
				escreva ("\n,um plus de ensino em sua vida\n")
				escreva("\nGRADUAÇÃO")

				dadosEstudante()
				
				escreva("Status: Digite 1 (Ativa) ou 2 (Inativa): ")
				leia(status)

				inteiro indice = 0 
				caracter movimentos[10]
				real notaAtual = 0.0
				
				caracter continuar = 'S'

				se(status == '1'){
					enquanto (continuar != 'N'){
						se(indice < 10){
							escreva ("\nTotal atual: ", notaAtual,"\n")
							escreva("MOVIMENTO ", indice + 1," - Digite I (inclusão de nota) ou R (retirada nota): ")
							leia (movimentos[indice])
							
							enquanto(movimentos[indice] != 'I' e movimentos[indice] != 'i' e movimentos[indice] != 'R' e movimentos[indice] != 'r'){
								escreva("\n  ERRO DE DIGITAÇÃO!\n")
								escreva ("\nTotal atual: ", notaAtual)
								escreva("\nMOVIMENTO ", indice + 1," - Digite I (inclusão de nota) ou R (retirada nota): ")
								leia (movimentos[indice])
							}
					
							escreva("Valor movimento: ")
							leia (pontos[indice])	
							se(movimentos[indice] == 'I' ou movimentos[indice] == 'i'){
						    		notaAtual = notaAtual + pontos[indice]
						    	}
						    	senao se (movimentos[indice] == 'R' ou movimentos[indice] == 'r'){
						    		enquanto(pontos[indice] > notaAtual){
						    			const inteiro bonus = 2
						    			notaAtual = notaAtual + bonus
						    			se(notaAtual < 0.0){
						    				notaAtual = 0.0
						    			}
						    		}
						    		notaAtual = notaAtual - pontos[indice]
						   
						    	}
						    		indice++	
		
						    		escreva("Continuar? Digite S (Sim) ou N (Não): ")
						    		leia (continuar)
							}		
						senao{
							escreva("\n NÃO É POSSÍVEL INCLUIR OU RETIRAR NOTAS\n")
							continuar = 'N'
						}
					}
				}
				senao{
					escreva("\nA matrícula do aluno esta inativa\n")
				}

			}
			senao se (tipo =='4'){
				limpa()
				escreva ("Escola ED++")
				escreva ("\n,um plus de ensino em sua vida\n")
				escreva("\nPÓS GRADUAÇÃO")

				dadosEstudante()
				
				escreva("Status: Digite 1 (Ativa) ou 2 (Inativa): ")
				leia(status)

			}
			senao se (tipo =='5'){
				limpa()
				escreva ("Escola ED++")
				escreva ("\n,um plus de ensino em sua vida\n")
				escreva("\nMESTRADO")

				dadosEstudante()
				
				escreva("Status: Digite 1 (Ativa) ou 2 (Inativa): ")
				leia(status)

				se(status == '1'){
					real notaAtual = notas(status)

					//regras de negócios para estudante do mestrado
					caracter creditoMestrado
					inteiro pontoCredito
					
					limpa()
					escreva ("Você possui algum crédito? Digite S (Sim) ou N (Não): ")
					leia (creditoMestrado)

					se (creditoMestrado == 'S' ou creditoMestrado == 's'){
						escreva ("Digite o valor do seu crédito entre 0 e 10: ")
						leia (pontoCredito)
						se ( pontoCredito != 0 ){
							notaAtual = pontoCredito + notaAtual
							escreva("\nO total de pontos do estudante é ", notaAtual, "\n")
						}
						senao 
							escreva("\nO total de pontos do estudante é ", notaAtual, "\n")
					}
				}
				senao {
					escreva("\nA matrícula do aluno esta inativa\n")
				}
			
				Util.aguarde(2000)
		    		limpa()
			}
		}enquanto (tipo!='6')
		escreva("\nSaindo do sistema")
	}

	funcao dadosEstudante(){
		inteiro matricula
		cadeia cpf
				
		escreva("\n\nMatrícula: ")
		leia(matricula)
		escreva("CPF: ")
		leia(cpf)
	}

	funcao real notas(caracter status){
		inteiro indice = 0 
		caracter movimentos[10]
		real notaAtual = 0.0
		real pontos[10]
		
		caracter continuar = 'S'

		se(status == '1'){
			enquanto (continuar != 'N'){
				se(indice < 10){
					escreva ("\nTotal atual: ", notaAtual,"\n")
					escreva("MOVIMENTO ", indice + 1," - Digite I (inclusão de nota) ou R (retirada nota): ")
					leia (movimentos[indice])
					
					enquanto(movimentos[indice] != 'I' e movimentos[indice] != 'i' e movimentos[indice] != 'R' e movimentos[indice] != 'r'){
						escreva("\n  ERRO DE DIGITAÇÃO!\n")
						escreva ("\nTotal atual: ", notaAtual)
						escreva("MOVIMENTO ", indice + 1," - Digite I (inclusão de nota) ou R (retirada nota): ")
						leia (movimentos[indice])
					}
					
					escreva("Valor movimento: ")
					leia (pontos[indice])	
					se(movimentos[indice] == 'I' ou movimentos[indice] == 'i'){
				    		notaAtual = notaAtual + pontos[indice]
				    	}
				    	senao se (movimentos[indice] == 'R' ou movimentos[indice] == 'r'){
				    		enquanto(pontos[indice] > notaAtual){
				    			escreva("\n  A SUA NOTA FICOU NEGATIVA\n")
				    			escreva ("\nTotal atual: ", notaAtual,"\n")
				    			escreva("Digite um novo valor para retirada de nota: ")
							leia (pontos[indice])	
				    		}
				    		notaAtual = notaAtual - pontos[indice]
				    	}
				    		indice++	

				    		escreva("Continuar? Digite S (Sim) ou N (Não): ")
				    		leia (continuar)
					}		
				senao{
					escreva("\n NÃO É POSSÍVEL INCLUIR OU RETIRAR NOTAS\n")
					continuar = 'N'
				}
			}
		}
		retorne notaAtual
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 7391; 
 * @DOBRAMENTO-CODIGO = [271];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */