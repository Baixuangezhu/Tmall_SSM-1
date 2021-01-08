package cn.wmyskxz.controller;

import cn.wmyskxz.pojo.*;
import cn.wmyskxz.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    StaffService staffService;

    @Autowired
    ProductService productService;

    @Autowired
    OrderItemService orderItemService;

    @Autowired
    UserService userService;

    @Autowired
    OrderService orderService;


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


    @RequestMapping("/Logout")
    public String logout(HttpSession session) {
        session.removeAttribute("staff");
        return "admin/login";
    }


    @RequestMapping("/test")
    public String testOrder() {
        return "admin/test";
    }




    /**
     * 立即购买（即新增OrderItem项）需要考虑以下两种情况：
     * 1.如果这个产品已经存在于购物车中，那么只需要相应的调整数量就可以了
     * 2.如果不存在对应的OrderItem项，那么就新增一个订单项（OrderItem）
     * - 前提条件：已经登录
     *
     * @param product_id 产品的ID
     * @param number     购买的数量
     * @return
     */
    @RequestMapping("/buyoneTest")
    public String buyoneTest(Integer product_id, Integer number,Integer userId,Order order) {
         //产品id由页面直接指定
         //数量由页面指定
        Product product = productService.get(product_id);
        int orderItemId = 0;
        //默认编号为1的用户下单
        User user = userService.get(userId);

        boolean found = false;
        //从item表里找出用户的订单项
        List<OrderItem> orderItems = orderItemService.listByUserId(user.getId());
        for (OrderItem orderItem : orderItems) {
            //当产品id等于订单项里的产品id时，只需数量加上去
            if (orderItem.getProduct_id().intValue() == product.getId().intValue()) {
                orderItem.setNumber(orderItem.getNumber() + number);
                orderItemService.update(orderItem);
                orderItemId = orderItem.getId();
                found =true;
                break;
            }
        }

        //如果没有存在这类型商品的订单则新建
        if (!found) {
            OrderItem orderItem = new OrderItem();
            orderItem.setUser_id(user.getId());
            orderItem.setNumber(number);
            orderItem.setProduct_id(product_id);
            orderItemService.add(orderItem);
            orderItemId = orderItem.getId();

            //新建订单项
            String orderCode = new SimpleDateFormat("yyyyMMddHHmmssSSS").format(new Date());
            order.setOrder_code(orderCode);
            order.setCreate_date(new Date());
            order.setUser_id(user.getId());
            order.setPay_date(new Date());
            order.setStatus(OrderService.waitDelivery);
            //更新订单项
            List<OrderItem> orderItems1 = orderItemService.listByUserId(user.getId());
            float total = orderService.add(order, orderItems1);

        }








        return "redirect:listOrder";
    }



    @RequestMapping("buyTest")
    public String buyTest(Model model, String[] orderItemId, HttpSession session) {
        //把订单项拿出来算一下总价格再放回去
        List<OrderItem> orderItems = new ArrayList<>();
        float total = 0;//总价格

        for (String strId : orderItemId) {
            int id = Integer.parseInt(strId);
            OrderItem oi = orderItemService.getById(id);
            total += oi.getProduct().getPrice() * oi.getNumber();
            orderItems.add(oi);
        }

        session.setAttribute("orderItems", orderItems);
        model.addAttribute("total", total);
        return "buyPage";
    }


    @RequestMapping("createOrderTest")
    public String createOrderTest(Model model, Order order, HttpSession session) {
        //User user = (User) session.getAttribute("user");
        //默认使用用户 1
        User user = userService.get(1);

        String orderCode = new SimpleDateFormat("yyyyMMddHHmmssSSS").format(new Date());
        order.setOrder_code(orderCode);
        order.setCreate_date(new Date());
        order.setUser_id(user.getId());
        order.setStatus(OrderService.waitPay);
        List<OrderItem> orderItems = (List<OrderItem>) session.getAttribute("orderItems");
        float total = orderService.add(order, orderItems);

        return "redirect:payPage?order_id=" + order.getId() + "&total=" + total;
    }






}
