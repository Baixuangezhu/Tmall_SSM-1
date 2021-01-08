package cn.wmyskxz.controller;

import cn.wmyskxz.pojo.Staff;
import cn.wmyskxz.service.StaffService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;
@Controller
@RequestMapping("/admin")
public class StaffController {

    @Autowired
    StaffService staffService;

    @RequestMapping("/listStaff")
    public String list(Model model) {
        List<Staff> staffs = staffService.list();
        model.addAttribute("staffs", staffs);
        return "admin/listStaff";
    }

    @RequestMapping("/editStaff")
    public String edit(Model model, Integer id, HttpSession session) {
        Staff admin = (Staff)session.getAttribute("staff");
        if(admin.getId() == 1){//默认id为1的职员为终极管理员
            Staff staff = staffService.get(id);
            model.addAttribute("staff", staff);
            return "admin/editStaff";
        }
        else
            return "admin/error";

    }

    @RequestMapping("/updateStaff")
    public String update(Staff staff) {
        staffService.update(staff);
        return "redirect:listStaff";
    }



    @RequestMapping("/addStaff")
    public String add(Staff staff,HttpSession session) {
        Staff admin = (Staff)session.getAttribute("staff");
        if(admin.getId() == 1){
            staffService.add(staff);
            return "redirect:listStaff";
        }
        else
            return "admin/error";
    }


    @RequestMapping("/deleteStaff")
    public String delete(Integer id,HttpSession session) {
        Staff admin = (Staff)session.getAttribute("staff");
        if(admin.getId() == 1){
            staffService.delete(id);
            return "redirect:listStaff";
        }
        else
            return "admin/error";
    }



}
