package Teste;

public class Node {
	
	private int value[];
	private int size;
	private static int valor;
	
	public Node() {
		valor = 0;
		size = 0;
	}
	
	private int left (int i) { return 2 * i + 1; }
	private int right (int i) { return 2 * i + 2; }
	private int parent (int i) { return (i-1) / 2; }
	
	private void inserir(int data) {
		value[size] = data;
		size++;
	}
	
	private void divisao(int tarefa) {
		int parent = parent(size);
		if(size == 0) {
			inserir(tarefa);
		}
		else {
			if(size == left(parent)) {
				inserir(value[parent] / 2);
			}
			else if(size == right(parent)) {
				if(value[parent] % 2 == 1) {
					inserir((value[parent] / 2) + 1);
				}
				else {
					inserir((value[parent] / 2));
				}
			}
		}
	}
	
	public void dividir(int tarefa, int esf) {
		int aux = 0;
		int total = 0;
		boolean teste = false;
		do {
		if((tarefa/Math.pow(2,aux)) <= esf) {
			teste = true;
		}
		else {
			aux++;	
		}
		}while(teste == false);
		
		for(int i = 0; i <= aux; i++) {
			total = total + (int)Math.pow(2, i);
		}
		System.out.println("Nível: " + aux + "\nNodos: " + total);
		value = new int[total+1]; //inicializar value[] aqui com o numero de folhas calculada
		for(int i = 0; i <= total; i++) {
			divisao(tarefa);
		}
	}
	
	public String toString() {
		for(int i =0; i <= ((size - 1) / 2) -1; i++) { //(size - 1) / 2
			System.out.println("X" + i + "(" + value[i] + "), "
					+ "X" + left(i) + "(" + value[left(i)] + "), "
					+ "X" + right(i) + "(" + value[right(i)] + ")\n");
		}
		return null;
	}
}
