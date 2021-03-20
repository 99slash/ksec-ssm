package dao;

import entity.Student;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 学生信息Dao
 */
public interface StudentDao {

    List<Student> findList(Student student);

    int getTotal(@Param("name") String name, @Param("studentId") String studentId);
    List<Student> findListPage(@Param("begin") int begin, @Param("limit") int limit, @Param("name") String name, @Param("studentId") String studentId);
    Student findStudentById(@Param("id") Integer id);
    /**
     * 添加学生信息
     * @param student
     */
     void insert(Student student);

    /**
     * 修改学生信息
     * @param student
     */
     void update(Student student);

    /**
     * 删除学生信息
     * @param id
     */
     void delStudent(@Param("id") int id);

    /**
     * 批量删除
     * @param id
     */
    void delStudents(Integer[]  id);
}
