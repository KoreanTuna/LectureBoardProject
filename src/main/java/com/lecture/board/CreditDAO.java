package com.lecture.board;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CreditDAO {
    @Autowired
    SqlSession sqlSession;
    public CreditVO getMajorCredit(){
        CreditVO result = sqlSession.selectOne("Credit.getMajorCredit");
        return result;
    }
}
