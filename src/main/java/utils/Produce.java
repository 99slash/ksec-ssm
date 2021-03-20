package utils;

import entity.Student;

import java.util.concurrent.BlockingQueue;

public class Produce implements Runnable {
    private BlockingQueue<Student> stus;//阻塞队列

    public Produce(BlockingQueue<Student> stus){
        this.stus=stus;
    }
    //随机生成对象
    public void tools(){
        Student student=new Student();
        int rdom=(int)(Math.random()*(100-0+1));
        student.setStudentId(Integer.toString(rdom));
        student.setChineseScore((int)(Math.random()*(100-0+1)));
        student.setMathScore((int)(Math.random()*(100-0+1)));
        student.setEnglishScore((int)(Math.random()*(100-0+1)));
        try {
            stus.put(student);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void run() {
        int i=0;
        while (true){
            try{
                tools();

                i++;
            }catch (Exception e){
                e.printStackTrace();
            }
        }
    }
}
