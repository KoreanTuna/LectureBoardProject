package com.poketmon.board;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
//전역 변수로 선언해주는 annotation
public class PoketmonDAO {
    @Autowired
    SqlSession sqlSession;
    public int insertPoketmon(PoketmonVO vo){
        int result = sqlSession.insert("Poketmon.insertPoketmon", vo);
        return result;
    }

    public int updatePoketmon(PoketmonVO vo){
        int result = sqlSession.update("Poketmon.updatePoketmon", vo);
        return result;
    }

    public int deletePoketmon(int pid){
        int result = sqlSession.delete("Poketmon.deletePoketmon", pid);
        return result;
    }
    public PoketmonVO getPoketmon(int pid){
        PoketmonVO result = sqlSession.selectOne("Poketmon.getPoketmon", pid);
        return result;
    }

    public List<Object> getPoketmonList(){
        List<Object> result =sqlSession.selectList("Poketmon.getPoketmonList");
        return result;
    }
//    private JdbcTemplate jdbcTemplate;
//    public void setJdbcTemplate(JdbcTemplate jdbcTemplate){
//        this.jdbcTemplate = new JdbcTemplate();
//    }
//    private Connection conn = null;
//    private final String poketmon_INSERT = "insert into poketmon (pnumber, pname, type, spcial, pclass, catch_rate,height,weight,familiar, detail) values (?,?,?,?,?,?,?,?,?,?)";
//    private final String poketmon_UPDATE = "update poketmon set pnumber=?, pname=?, type=?, spcial=?, pclass=?, catch_rate=?,height=?,weight=?,familiar=?, photo=?, detail=? where pid=?";
//    private final String poketmon_DELETE = "delete from poketmon where pid =?";
//    private final String poketmon_GET = "select * from poketmon where pid=?";
//    private final String poketmon_LIST = "select * from poketmon order by pid desc";
//
//    public int insertPoketmon(PoketmonVO vo){
//        return jdbcTemplate.update(poketmon_INSERT, new Object[]{vo.getPnumber(), vo.getPname(), vo.getType(), vo.getSpcial(), vo.getPclass(), vo.getCatch_rate(), vo.getHeight(), vo.getWeight(), vo.getFamiliar(), vo.getDetail()});
//    }
//    public int deletePoketmon(int pid){
//        return jdbcTemplate.update(poketmon_DELETE, new Object[]{pid});
//    }
//    public int updatePoketmon(PoketmonVO vo){
//        return jdbcTemplate.update(poketmon_UPDATE, new Object[]{vo.getPnumber(), vo.getPname(), vo.getType(), vo.getSpcial(), vo.getPclass(), vo.getCatch_rate(), vo.getHeight(), vo.getWeight(), vo.getFamiliar(), vo.getPhoto(), vo.getDetail(), vo.getPid()});
//    }
//
//    public PoketmonVO getPoketmon(int pid){
//        return jdbcTemplate.queryForObject(poketmon_GET, new Object[]{pid}, new BeanPropertyRowMapper<PoketmonVO>(PoketmonVO.class));
//    }
//    public List<PoketmonVO> getPoketmonList(){
//        return jdbcTemplate.query(poketmon_LIST, new RowMapper<PoketmonVO>() {
//            public PoketmonVO mapRow(ResultSet rs, int rowNum) throws SQLException {
//                PoketmonVO data = new PoketmonVO();
//                data.setPid(rs.getInt("pid"));
//                data.setPnumber(rs.getString("pnumber"));
//                data.setPname(rs.getString("pname"));
//                data.setType(rs.getString("type"));
//                data.setSpcial(rs.getString("spcial"));
//                data.setPclass(rs.getString("pclass"));
//                data.setCatch_rate(rs.getInt("catch_rate"));
//                data.setHeight(rs.getString("height"));
//                data.setWeight(rs.getDouble("weight"));
//                data.setFamiliar(rs.getInt("familiar"));
//                data.setPhoto(rs.getString("photo"));
//                data.setDetail(rs.getString("detail"));
//                return data;
//            }
//        });
//    }
}
