package com.poketmon.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;
import java.util.List;

@Controller
public class HomeController {
    @Autowired
    private PoketmonDAO poketmonDAO;

    @RequestMapping("/")
    public String gohome(Model model){
        model.addAttribute("list", poketmonDAO.getPoketmonList());
        return "redirect:home";
    }
    @RequestMapping("home")
    public String poketmonList(Model model){
        model.addAttribute("list", poketmonDAO.getPoketmonList());

        return "board/list";
    }

    @RequestMapping("editform/{pid}")
    public String poketmon(Model model, @PathVariable("pid") int pid){
        model.addAttribute("editform", poketmonDAO.getPoketmon(pid));
        return "board/editform";
    }

    @RequestMapping("post/{pid}")
    public String post(Model model, @PathVariable("pid") int pid){
        model.addAttribute("post", poketmonDAO.getPoketmon(pid));

        return "board/post";
    }

    @RequestMapping("addform")
    public String addform(){
        return "board/addform";
    }

    @RequestMapping(value = "/deleteok/{pid}", method = RequestMethod.GET)
    public String deletePoketmon(@PathVariable("pid") int id){
        int i = poketmonDAO.deletePoketmon(id);
        if(i == 0){
            System.out.println("데이터 삭제 실패");
        }
        else{
            System.out.println("데이터 삭제 성공");
        }
        return "redirect:../home";
    }
    @RequestMapping( value = "/editok", method = RequestMethod.GET)
    public String editPostOK(PoketmonVO vo){
        int i = poketmonDAO.updatePoketmon(vo);
        if(i == 0)
            System.out.println("데이터 수정 실패");
        else{
            System.out.println("데이터 수정 성공");
        }
        return "redirect:home";
    }
    @RequestMapping(value = "/addok", method = RequestMethod.GET)
    public String addPoskOK(PoketmonVO vo){
        int i = poketmonDAO.insertPoketmon(vo);
        if(i == 0)
            System.out.println("데이터 추가 실패");
        else{
            System.out.println("데이터 추가 성공");
        }
        return "redirect:home";
    }

}
