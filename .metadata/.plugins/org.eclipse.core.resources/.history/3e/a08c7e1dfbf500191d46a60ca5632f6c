package br.com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import br.com.bean.DisciplinaBean;
import br.com.connect.ConexaoFactory1;

public class DisciplinaDAO {

	private Connection conexao;

	public DisciplinaDAO() throws Exception {
		this.conexao = new ConexaoFactory1().getConnection();
	}
	
	public void PesquisarConteudo(DisciplinaBean c) throws SQLException {
		PreparedStatement estrutura = this.conexao.prepareStatement("select * from Disciplinas where NomeMateria = ? and NomeConteudo= ? ");
		estrutura.setString(1, c.getNomeMateria());
		estrutura.setString(2, c.getConteudos());
		ResultSet resultadoDados = estrutura.executeQuery();
		if(resultadoDados.next()) {
		c.setNomeMateria(resultadoDados.getString("NomeMateria"));
		c.setConteudos(resultadoDados.getString("NomeConteudo"));
		}
		
	}



}
