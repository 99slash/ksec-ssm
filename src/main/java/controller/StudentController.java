package controller;

import entity.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import service.StudentService;

import java.util.HashMap;
import java.util.Map;

/**
 * 人员操作Controller
 */
@Controller
@RequestMapping("/user")
public class StudentController {
    @Autowired
    StudentService studentService;

    @RequestMapping("/list")
    public String list() {

        return "students";

    }

    @ResponseBody
    @RequestMapping(value = "/listMp")
    public Map listMp(Integer offset, Integer limit,String name,String studentId) {
       Map students= studentService.findListPage(offset,limit,name,studentId);

        return students;

    }
    @RequestMapping("/toAdd")
    public String toAdd(){
        return "addStudent";
    }

    @RequestMapping(value = "/save",method = RequestMethod.POST)
    public String save(Student s){
        studentService.saveStudent(s);
        return "redirect:/user/list";
    }
    @RequestMapping( "/updateP/{id}")
    public String update(@PathVariable("id")Integer id, Map map ){
        Student s = studentService.findStudentById(id);
        map.put("s",s);
        return "update";
    }
    @ResponseBody
    @RequestMapping("/del")
    public Map del(Integer[] ids) {
        Map map=new HashMap();
        try {
            studentService.delStudents(ids);
            map.put("succese",true);
        } catch (Exception e) {
            e.printStackTrace();
            map.put("succese",false);
        }
        return map;
    }
}
