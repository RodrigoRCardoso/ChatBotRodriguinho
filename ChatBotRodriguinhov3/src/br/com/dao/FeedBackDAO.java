package br.com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import br.com.bean.FeedbackBean;
import br.com.connect.ConexaoFactory1;

public class FeedBackDAO {
	private Connection conexao;

	public FeedBackDAO() throws Exception {
		this.conexao = new ConexaoFactory1().getConnection();
	}

	String critica;

	public void Recebcritica(FeedbackBean critica) throws SQLException {
		Connection con = null;
		PreparedStatement estrutura = this.conexao.prepareStatement(" insert FROM Critica values(?)");
		estrutura.setString(1, critica.getCritica());
		estrutura.execute();
		estrutura.close();

	}
}
