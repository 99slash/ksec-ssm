package entity;

import java.io.Serializable;
import java.util.List;

/**
 * 学生基本信息Entity
 */
public class Student{

    private int id;
    private String studentId;//学号
    private String name;//姓名
    private String sex;//性别
    private Score score;
    private List<Score> scores;

    private int chineseScore;
    private int mathScore;
    private int englishScore;

    public Student(){}

    public Student(int id, String studentId, String name, String sex, List<Score> scores) {
        this.id = id;
        this.studentId = studentId;
        this.name = name;
        this.sex = sex;
        this.scores = scores;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getStudentId() {
        return studentId;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public Score getScore() {
        return score;
    }

    public void setScore(Score score) {
        this.score = score;
    }

    public List<Score> getScores() {
        return scores;
    }

    public void setScores(List<Score> scores) {
        this.scores = scores;
    }

    public int getChineseScore() {
        return chineseScore;
    }

    public void setChineseScore(int chineseScore) {
        this.chineseScore = chineseScore;
    }

    public int getMathScore() {
        return mathScore;
    }

    public void setMathScore(int mathScore) {
        this.mathScore = mathScore;
    }

    public int getEnglishScore() {
        return englishScore;
    }

    public void setEnglishScore(int englishScore) {
        this.englishScore = englishScore;
    }

    @Override
    public String toString() {
        return "Student{" +
                "id=" + id +
                ", studentId='" + studentId + '\'' +
                ", name='" + name + '\'' +
                ", sex='" + sex + '\'' +
                ", scores=" + scores +
                '}';
    }

    public void show() {
        String json = "{" + "\"学号\":" + "\"" + studentId + "\"," + "\"语文\":" + "\"" + chineseScore + "\"," + "\"数学\":" + "\"" +mathScore + "\","+"\"英语\":"+"\""+englishScore+"\"}";
        System.out.println(json);
    }
}
