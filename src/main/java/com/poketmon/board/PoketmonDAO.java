package com.minwoo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
@Repository
//전역 변수로 선언해주는 annotation
public class PoketmonDAO {
    @Autowired
    private JdbcTemplate jdbcTemplate;
    public void setJdbcTemplate(JdbcTemplate jdbcTemplate){
        this.jdbcTemplate = new JdbcTemplate();
    }
    private Connection conn = null;
    private final String poketmon_INSERT = "insert into poketmon (pnumber, pname, type, spcial, pclass, catch_rate,height,weight,familiar, photo, detail) values (?,?,?,?,?,?,?,?,?,?,?)";
    private final String poketmon_UPDATE = "update poketmon set pnumber=?, pname=?, type=?, spcial=?, pclass=?, catch_rate=?,height=?,weight=?,familiar=?, photo=?, detail=? where pid=?";
    private final String poketmon_DELETE = "delete from poketmon where pid =?";
    private final String poketmon_GET = "select * from poketmon where pid=?";
    private final String poketmon_LIST = "select * from poketmon order by pid desc";
}
