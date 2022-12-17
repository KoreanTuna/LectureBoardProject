package com.poketmon.board;

import com.lecture.board.CreditDAO;
import com.lecture.board.LectureDAO;
import com.lecture.board.LectureVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class HomeController {
    @Autowired
    private LectureDAO lectureDAO;
    @Autowired
    private CreditDAO creditDAO;

    @RequestMapping("/")
    public String gohome(Model model){
        model.addAttribute("list", lectureDAO.getLectureList());
        model.addAttribute("credit", creditDAO.getMajorCredit());

        return "redirect:home";
    }
    @RequestMapping("home")
    public String poketmonList(Model model){
        model.addAttribute("list", lectureDAO.getLectureList());
        model.addAttribute("credit", creditDAO.getMajorCredit());
        return "board/list";
    }

    @RequestMapping("editform/{seq}")
    public String poketmon(Model model, @PathVariable("seq") int seq){
        model.addAttribute("editform", lectureDAO.getLecture(seq));
        return "board/editform";
    }

    @RequestMapping("post/{seq}")
    public String post(Model model, @PathVariable("seq") int seq){
        model.addAttribute("post", lectureDAO.getLecture(seq));
        return "board/post";
    }

    @RequestMapping("addform")
    public String addform(){
        return "board/addform";
    }

    @RequestMapping(value = "/deleteok/{seq}", method = RequestMethod.GET)
    public String deletePoketmon(@PathVariable("seq") int seq){
        int i = lectureDAO.deleteLecture(seq);
        if(i == 0){
            System.out.println("데이터 삭제 실패");
        }
        else{
            System.out.println("데이터 삭제 성공");
        }
        return "redirect:../home";
    }
    @RequestMapping( value = "/editok", method = RequestMethod.GET)
    public String editPostOK(LectureVO vo){
        int i = lectureDAO.updateLecture(vo);
        if(i == 0)
            System.out.println("데이터 수정 실패");
        else{
            System.out.println("데이터 수정 성공");
        }
        return "redirect:home";
    }
    @RequestMapping(value = "/addok", method = RequestMethod.GET)
    public String addPoskOK(LectureVO vo){
        int i = lectureDAO.insertLecture(vo);
        if(i == 0)
            System.out.println("데이터 추가 실패");
        else{
            System.out.println("데이터 추가 성공");
        }
        return "redirect:home";
    }
    @RequestMapping(value = "/logout")
    public String logout(HttpSession session){
        session.invalidate();
        return "redirect:/login/login";
    }

}
