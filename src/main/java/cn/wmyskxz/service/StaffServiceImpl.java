package cn.wmyskxz.service;

import cn.wmyskxz.mapper.StaffMapper;
import cn.wmyskxz.pojo.Staff;
import cn.wmyskxz.pojo.StaffExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class StaffServiceImpl implements StaffService {
    @Autowired
    StaffMapper staffMapper;



    @Override
    public List<Staff> list() {
        StaffExample example = new StaffExample();
        return staffMapper.selectByExample(example);
    }

    @Override
    public void updatePassword(int id, String password) {
        Staff staff = get(id);
        staff.setPassword(password);
        staffMapper.updateByPrimaryKey(staff);

    }

    @Override
    public void update(Staff staff) {
        staffMapper.updateByPrimaryKey(staff);
    }

    @Override
    public Staff get(Integer id) {
        return staffMapper.selectByPrimaryKey(id);
    }

    @Override
    public Staff get(String name, String password) {
        StaffExample example = new StaffExample();
        example.or().andNameEqualTo(name).andPasswordEqualTo(password);
        List<Staff> result = staffMapper.selectByExample(example);
        if (result.isEmpty())
            return null;
        return result.get(0);
    }

    @Override
    public boolean isExist(String name) {
        StaffExample example =new StaffExample();
        example.or().andNameEqualTo(name);
        List<Staff> result= staffMapper.selectByExample(example);
        if(!result.isEmpty())
            return true;
        return false;
    }

    @Override
    public void add(Staff staff) {
        staffMapper.insert(staff);

    }

    @Override
    public void delete(Integer id) {
        staffMapper.deleteByPrimaryKey(id);
    }
}
