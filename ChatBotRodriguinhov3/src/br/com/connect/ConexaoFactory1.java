package br.com.connect;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConexaoFactory1 {
	
	public Connection getConnection() throws Exception{
		return DriverManager.getConnection("jdbc:oracle:thin:@oracle.fiap.com.br:1521:orcl", "Rm83469", "130700");
	}
}
