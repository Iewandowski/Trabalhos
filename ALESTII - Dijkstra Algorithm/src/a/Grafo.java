package a;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.PriorityQueue;
import java.util.Scanner;
import java.util.StringTokenizer;

public class Grafo {
	 private ArrayList<Vertice> vertices;
	 private ArrayList<Aresta> arestas;
	 private ArrayList<Vertice> fila;
	 private ArrayList<Vertice> ja_visitado;
	 
	 private Vertice saida = null;
	    
	    public Grafo() {
	        this.vertices = new ArrayList();
	        this.arestas = new ArrayList();
	        this.fila = new ArrayList();
	        this.ja_visitado = new ArrayList();
	    }
	    
	    public void addVertice(Character posicao, int distancia, int linha, int coluna) {
	        Vertice novoVertice = new Vertice(posicao, distancia, linha, coluna);
	        this.vertices.add(novoVertice);
	    }
	    
	    public void addAresta(int linhaInicial, int colunaInicial, int linhaFim, int colunaFim) {
	        Vertice inicio = this.getVertice(linhaInicial, colunaInicial);	        
	        Vertice fim = this.getVertice(linhaFim, colunaFim);
	        
	        Aresta aresta = new Aresta(inicio,fim);
	        inicio.adicionarArestaEntrada(aresta);
	        fim.adicionarArestaSaida(inicio);
	        this.arestas.add(aresta);
	    }
	    
	    public Vertice getSaida() {	    	
	    	for (int i = 0; i <= this.vertices.size(); i++) {
	    		if(this.vertices.get(i).getPosicao().equals((char)'S')) {
	    			this.saida = this.vertices.get(i);
	    			break;
	    		}
	    	}
	    	return saida;
	    }
	    public Vertice getCavalo() {
	    	Vertice cavalo = null;
	    	for (int i = 0; i <= this.vertices.size(); i++) {
	    		if(this.vertices.get(i).getPosicao().equals((char)'C')) {
	    			cavalo = this.vertices.get(i);
	    			break;
	    		}
	    	}
	    	return cavalo;
	    }
	    public Vertice getVertice(int inicio, int fim) {
	    	Vertice vertice = null; 
	    	for (int i = 0; i <= this.vertices.size(); i++) {
	    		if(this.vertices.get(i).getLinha() == inicio && this.vertices.get(i).getColuna() == fim) {
	    			vertice = this.vertices.get(i);
	    			break;
	    		}
	    	}
	    	return vertice;
	    }
	    
	   public void dijkstra(Vertice horse) {		
		   ArrayList<Vertice> fila = new ArrayList<Vertice>();		   	   
		   Vertice cavalo = horse; 		 
	    	
	    	cavalo.setDistancia(0);
	    	fila.add(cavalo);		   
	    	
	    	while(!fila.isEmpty()) {
	    		Vertice atual = fila.get(0);
	    		fila.remove(0);
	    		ArrayList<Vertice> adj = atual.getArestaSaida();	            
	    		
	            for (Vertice v : adj) {
	            	if((atual.getDistancia())< v.getDistancia()) {
	            		//fila.remove(v);
	            		v.setDistancia(atual.getDistancia()+1);
	            		v.setPai(atual);
	                    fila.add(v);
	            	}
	            }
	            adj.clear();	    		
	    	}
	    }
	   
	   	public List<Vertice> caminhamento(Vertice destino) {
	   		List<Vertice> caminho = new ArrayList<Vertice>();
			for(Vertice v = destino; v!=null; v = v.getPai()){
				caminho.add(v);
			}
			Collections.reverse(caminho);
			return caminho;
   		}
	    
	    public void printVertices() {
	    	for(Vertice v : vertices) {
	    		System.out.println(v.printPosicao(v));
	    	}
	    }
	    public void printArestas() {
	    	for(Aresta a : arestas) {
	    		System.out.println("Origem: " + a.getOrigem().printPosicao(a.getOrigem()) + " Destino: " + a.getDestino().printPosicao(a.getDestino()));
	    	}
	    }
	    class Vertice {
	    	Character posicao;
	    	int distancia;
	    	int linha;
	    	int coluna;
	    	Vertice pai;
	        private ArrayList<Aresta> arestasEntrada;
	        private ArrayList<Vertice> arestasSaida;
	        
	        public Vertice(Character posicao, int distancia, int linha, int coluna) {
	            this.posicao = posicao;
	            this.distancia = distancia;
	            this.linha = linha;
	            this.coluna = coluna;
	            this.arestasEntrada = new ArrayList();
	            this.arestasSaida = new ArrayList();
	        }
	        
	        public void adicionarArestaEntrada(Aresta aresta) {
	            this.arestasEntrada.add(aresta);
	        }
	        
	        public void adicionarArestaSaida(Vertice aresta) {
	            this.arestasSaida.add(aresta);
	        }
	        
	        public Character getPosicao() {
	        	return posicao;
	        }
	        
	        public int getDistancia() {
	        	return distancia;
	        }
	        
	        public void setDistancia(int distancia) {
	        	this.distancia = distancia;
	        }
	        
	        public ArrayList<Aresta> getArestaEntrada() {
	        	return arestasEntrada;
	        }
	        
	        public ArrayList<Vertice> getArestaSaida() {
	        	return arestasSaida;
	        }
	        
	        public int getLinha() {
	        	return linha;
	        }
	        public int getColuna() {
	        	return coluna;
	        }
	        public String printPosicao(Vertice v) {
	        	return "[" + v.getLinha() + "," + v.getColuna() + "]";
	        }
	        
	        public Vertice getPai() {
	        	return pai;
	        }
	        public void setPai(Vertice v) {
	        	this.pai = v;
	        }
	    }
	    
	    class Aresta {
	        private Vertice origem;
	        private Vertice destino;
	        
	        public Aresta(Vertice inicio, Vertice fim) {
	            this.origem = inicio;
	            this.destino = fim;
	        }
	        
	        public Vertice getOrigem() {
	        	return origem;
	        }
	        
	        public Vertice getDestino() {
	        	return destino;
	        }
	    }
	    
	public static void main(String[] args) throws IOException {
    	int linha = 0, coluna = 0;        
        //CONTAR LINHAS E COLUNAS
    	BufferedReader br = new BufferedReader(new FileReader("C:\\Users\\carol\\eclipse-workspace\\T2AlestII\\src\\a\\caso150.txt"));
        String line = "";
        while (line != null) {
            line = br.readLine();
            if (line == null) {
                break;
            }
            linha++;
            if (linha == 1) {
                for (int i = 0; i < line.length(); i++) {
                    coluna++;
                }
            }
        }
        br.close();
        Grafo grafo = new Grafo();
        System.out.print(linha);
        //INSERIR CHARS NA MATRIZ
        Character[][] matriz = new Character[linha][coluna];
        BufferedReader reader;
        reader = new BufferedReader(new FileReader("C:\\Users\\carol\\eclipse-workspace\\T2AlestII\\src\\a\\caso150.txt"));
        int i = 0;
        int lin = 0;
        int col = 0;
        
        while ((i = reader.read()) != -1) {
            if ((char) i != '\n') {
            	if ((char) i == 'C' || (char) i == 'S' || (char) i == 'x' || (char) i == '.') {
                	matriz[lin][col] = (char) i;
	                col++;
                }                            
            } else {
                lin++;
                col = 0;
            }
        }        
        
        reader.close();
       for (int l = 0; l < matriz.length; l++){
          for (int c = 0; c < matriz[l].length; c++){
        	  //System.out.println(matriz[l][c]);
        	  grafo.addVertice(matriz[l][c],Integer.MAX_VALUE, l, c);        	  
          }
        }
       	int[] movLinhas = {-1, 1, -1, 1, -2, 2, -2, 2};
   		int[] movColunas = {-2, 2, 2, -2, -1, 1, +1, -1};
   		
   		for (int l = 0; l < matriz.length; l++){
            for (int c = 0; c < matriz[l].length; c++){
            	if(matriz[l][c] != (char)'x') {
            		for(int a = 0; a < movLinhas.length; a++) {            			
            			int verificaLinha = (l + movLinhas[a]) % linha;
            			int verificaColuna = (c + movColunas[a]) % coluna;
            			if(verificaLinha < 0) {
            				verificaLinha = linha + verificaLinha;
            			}
            			if(verificaColuna < 0) {
            				verificaColuna = coluna + verificaColuna;
            			}
            			//System.out.println("Linha Entra: " + l + " + " + movLinhas[a] + " % " + linha + " sai: " + verificaLinha);
            			//System.out.println("Coluna Entra: " + c + " + " + movColunas[a] + " % " + coluna + " sai: " + verificaColuna);
            			if (matriz[verificaLinha][verificaColuna] != (char)'x'){
            				grafo.addAresta(l,c,verificaLinha,verificaColuna);
            			}
            		}            		
            	}
            }
   		}
   		//grafo.printVertices();
   		//grafo.printArestas();
   		
   		Vertice cavalo = grafo.getCavalo();
   		grafo.dijkstra(cavalo);
   		List<Vertice> aux = grafo.caminhamento(grafo.getSaida());
   		for(Vertice v : aux) {
   			System.out.println("Chega na posição: " + v.getPosicao() + " -> " + v.printPosicao(v) + " em: " + v.getDistancia() + " pulos");
   		}
        }	
}
    	
    
    	
   
