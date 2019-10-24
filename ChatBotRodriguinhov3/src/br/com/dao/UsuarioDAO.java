package br.com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import br.com.bean.UsuarioBean;
import br.com.connect.ConexaoFactory1;

public class UsuarioDAO {
	
	private Connection conexao;

	public UsuarioDAO() throws Exception {
		this.conexao = new ConexaoFactory1().getConnection();
		System.out.println(this.conexao.isClosed());
	}
	
	public boolean buscaUsuario(UsuarioBean usuario) throws SQLException {
		Connection con = null;
		PreparedStatement estrutura = this.conexao.prepareStatement(" SELECT 1 FROM usuarios  WHERE usuario = ? ");
		estrutura.setString(1, usuario.getUsuario());
		ResultSet resultadoDados = estrutura.executeQuery();

		return !resultadoDados.wasNull();

	}

	public boolean buscaEMail(UsuarioBean usuario) throws SQLException {
		Connection con = null;
		PreparedStatement estrutura = this.conexao.prepareStatement(" SELECT 1 FROM usuarios  WHERE email = ?");
		estrutura.setString(1, usuario.getEmail());
		ResultSet resultadoDados = estrutura.executeQuery();

		return !resultadoDados.wasNull();

	}
	public boolean buscaRM(UsuarioBean usuario) throws SQLException {
		Connection con = null;
		PreparedStatement estrutura = this.conexao.prepareStatement(" SELECT 1 FROM usuarios  WHERE rm = ?");
		estrutura.setInt(1, usuario.getRm());
		
		ResultSet resultadoDados = estrutura.executeQuery();

		return !resultadoDados.wasNull();
}
	public boolean Cadastro(UsuarioBean usuario) throws SQLException {
		
		PreparedStatement estrutura = this.conexao.prepareStatement(" INSERT INTO usuario (USUARIO,RM,DATANASCIMENTO,EMAIL,SENHA) values(?,?,?,?,?)");
		estrutura.setString(1, usuario.getUsuario());
		estrutura.setString(2, usuario.getNome());
		estrutura.setString(3, usuario.getEmail());
		estrutura.setString(4, usuario.getSenha());
		estrutura.execute();
		estrutura.close();

		return true;
	}
	
	 public boolean buscaUsuarioEsenha(String usuario ,String senha) throws Exception {
			PreparedStatement estrutura = this.conexao.prepareStatement(" SELECT EMAIL, Senha FROM USUARIO WHERE EMAIL LIKE ? and SENHA = ?");
			estrutura.setString(1, usuario);
			estrutura.setString(2, senha);
			ResultSet resultadoDados = estrutura.executeQuery();
			boolean resp = resultadoDados.next();
			estrutura.close();
			return resp;

		}
	
}
