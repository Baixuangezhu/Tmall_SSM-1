package cn.wmyskxz.service;

import cn.wmyskxz.pojo.Staff;
import java.util.List;

public interface StaffService {


    /**
     * 返回所有的店员
     *
     * @return
     */
    List<Staff> list();

    /**
     * 更改店员密码
     *
     * @param id
     * @param password
     */
    void updatePassword(int id, String password);

    /**
     * 更新一条数据
     * @param staff
     */
    void update(Staff staff);

    /**
     * 根据id获取店员
     *
     * @param id
     * @return
     */
    Staff get(Integer id);

    /**
     * 根据店员名和密码来查询用户
     *
     * @param name
     * @param password
     * @return
     */
    Staff get(String name, String password);

    /**
     * 根据店员判断用户是否存在
     *
     * @param name
     * @return
     */
    boolean isExist(String name);

    /**
     * 增加一条用户数据
     *
     * @param staff
     */
    void add(Staff staff);


    /**
     * 通过id删除一条数据
     *
     * @param id
     */
    void delete(Integer id);
}
