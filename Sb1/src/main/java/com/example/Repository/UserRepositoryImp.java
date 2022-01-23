package com.example.Repository;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Repository;

import com.example.model.CorporateModel;
import com.example.model.UserModel;

@Repository
public class UserRepositoryImp implements UserRepository {

	@Autowired
	DataSource dataSource;

	@Override
	public int signin(String username, String password, UserModel userModel) {

		JdbcTemplate search = new JdbcTemplate(dataSource);

		String sql = "SELECT * from users where UserLoginId=?";
		int i = 0;

		SqlRowSet usermodel = search.queryForRowSet(sql, "Alan");

		while (usermodel.next()) {
			if (username.equals(usermodel.getString("UserLoginId"))
					&& password.equals(usermodel.getString("UserPassword"))) {
				i = 1;
			}

		}

		return i;
	}

	@Override
	public int addUser(UserModel usermodel) {

		JdbcTemplate insert = new JdbcTemplate(dataSource);
		String sql = "INSERT INTO users " + "(UserLoginId,UserPassword,UserAdd,UserDept,UserPhno,CorporateId)  VALUES (?,?,?,?,?,?)";
		int i = insert.update(sql, new Object[] { usermodel.getUserLoginId(), usermodel.getUserPassword(),usermodel.getUserAdd(),
				usermodel.getUserDept(),usermodel.getUserPhno(),usermodel.getCorporateId() });
		return i;
	}

	@Override
	public UserModel getuserByuserId(String uid) {
		JdbcTemplate obj = new JdbcTemplate(dataSource);
		String sql = "select * from users where UserLoginId=?";
		UserModel emp = obj.queryForObject(sql, new BeanPropertyRowMapper<UserModel>(UserModel.class),
				new Object[] {uid});
		return emp;

	}
	
	@Override
	public UserModel getuserById(int id) {
		JdbcTemplate obj = new JdbcTemplate(dataSource);
		String sql = "select * from users where CorporateId=?";
		UserModel emp = obj.queryForObject(sql, new BeanPropertyRowMapper<UserModel>(UserModel.class),
				new Object[] {id});
		return emp;

	}

	@Override
	public int modify(UserModel usermodel) {
		
		JdbcTemplate insert = new JdbcTemplate(dataSource);
		int i = insert.update("update users set UserAdd=?,UserPhno=?,UserDept=? where UserLoginId=?",
				new Object[] { usermodel.getUserAdd(), usermodel.getUserPhno(), usermodel.getUserDept(),usermodel.getUserLoginId()});
		System.out.println(i);
		return i;
	}

	@Override
	public List<UserModel> viewAll(int id) {
		JdbcTemplate insert = new JdbcTemplate(dataSource);
		String sts="Yes";
		String sql = "SELECT * from users where CorporateId=? and UserStatus=?";

		List<UserModel> employees = insert.query(sql,
				new BeanPropertyRowMapper<UserModel>(UserModel.class),new Object[]{id,sts});
		return employees;

	}

	@Override
	public int delete(String id) {
		String data="No";
		JdbcTemplate insert = new JdbcTemplate(dataSource);
		String sql = "update users set UserStatus=? where UserLoginId=?";
		int i = insert.update(sql, new Object[] {data,id});
		return i;
	}

}
