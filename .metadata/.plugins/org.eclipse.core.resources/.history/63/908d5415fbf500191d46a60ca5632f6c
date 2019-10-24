package br.com.connect;

import java.sql.*;

import br.com.connect.ConexaoFactory1;

public class TesteConexao {
	public static void main(String[] args) throws Exception {
		Connection c = null;
		try {
			c = new ConexaoFactory1().getConnection();
			System.out.println("Conexao Aberta");
			Statement st = c.createStatement();
			
		}catch (Exception e) {
			System.out.println("Erro de conexao");
		}finally {
			try {
				c.close();
			} catch (Exception e) {
				System.out.println(e);
			}
		}
	}
}

