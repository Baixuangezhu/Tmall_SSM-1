package cn.wmyskxz.controller;

import cn.wmyskxz.pojo.Staff;
import cn.wmyskxz.service.StaffService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    StaffService staffService;

    @RequestMapping("/Login")
    public String login(Model model,
                        @RequestParam("name") String name,
                        @RequestParam("password") String password,
                        HttpSession session) {
        Staff staff = staffService.get(name, password);
        if (null == staff) {
            model.addAttribute("msg", "账号密码错误");
            return "admin/login";
        }
        session.setAttribute("staff", staff);
        return "redirect:listCategory";
    }
}
