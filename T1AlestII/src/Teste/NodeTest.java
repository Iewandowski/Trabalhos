package Teste;

import java.util.Scanner;

public class NodeTest {

	public static void main(String[] args) {
		int tarefa, esforco;
		Node node = new Node();
	    Scanner input = new Scanner( System.in );
	    
	    System.out.println("Insira o valor da tarefa");
	    tarefa = input.nextInt();
	    System.out.println("Insira o valor máximo de esforço para cada computador");
	    esforco = input.nextInt();
	    
	    node.dividir(tarefa, esforco);
	    node.toString();
	}

}
