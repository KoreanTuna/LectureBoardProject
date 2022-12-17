package com.lecture.board;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class LectureDAO {
    @Autowired
    SqlSession sqlSession;
    public int insertLecture(LectureVO vo){
        int result = sqlSession.insert("Lecture.insertLecture", vo);
        return result;
    }
    public int updateLecture(LectureVO vo){
        int result = sqlSession.update("Lecture.updateLecture", vo);
        return result;
    }
    public int deleteLecture(int seq){
        int result = sqlSession.delete("Lecture.deleteLecture", seq);
        return result;
    }
    public LectureVO getLecture(int seq){
        LectureVO result = sqlSession.selectOne("Lecture.getLecture", seq);
        return result;
    }

    public List<Object> getLectureList(){
        List<Object> result =sqlSession.selectList("Lecture.getLectureList");
        return result;
    }

}

