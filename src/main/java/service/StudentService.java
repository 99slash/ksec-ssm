package service;

import dao.StudentDao;
import entity.Student;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class StudentService {
    @Resource
    StudentDao studentDao;



    /**
     * 查找所有学生信息-分页
     * @return
     */
    public Map findListPage(Integer offset, Integer limit,String name,String studentId){
        int total = studentDao.getTotal(name,studentId);
        List<Student> students= studentDao.findListPage(offset, limit, name,studentId);
        System.out.println("学生信息："+students.toString());
        Map map = new HashMap();
        map.put("total",total);
        map.put("rows",students);

        return map;
    }
    public Student findStudentById(Integer id){
        return studentDao.findStudentById(id);
    }
    public void saveStudent(Student student) {
        if(student.getId()==0){
            studentDao.insert(student);
        }else {
            studentDao.update(student);
        }
    }

    public void delStudents(Integer[] id) throws Exception {
        studentDao.delStudents(id);


    }
}
