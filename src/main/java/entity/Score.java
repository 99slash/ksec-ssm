package entity;

import java.io.Serializable;
/**
 * 学生成绩Entity
 */
public class Score{

    private int sid;
    private String studentId;//学生
    private String  courseId;//课程id
    private String  courseName;//课程名称
    private String  grade;//分数

    public Score(){}

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public String getStudentId() {
        return studentId;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId;
    }

    public String getCourseId() {
        return courseId;
    }

    public void setCourseId(String courseId) {
        this.courseId = courseId;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    @Override
    public String toString() {
        return "Score{" +
                "studentId=" + studentId +
                ", courseName='" + courseName + '\'' +
                ", grade='" + grade + '\'' +
                '}';
    }
}
