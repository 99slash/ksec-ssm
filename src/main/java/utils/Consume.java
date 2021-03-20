package utils;

import entity.Student;

import java.util.concurrent.BlockingQueue;

public class Consume implements Runnable{
    private BlockingQueue<Student> studentBlockingQueue;
    public Consume(BlockingQueue<Student> studentBlockingQueue){
        this.studentBlockingQueue=studentBlockingQueue;
    }

    @Override
    public void run() {
        try{
            //Thread.sleep(100);
                while (true){
                Student student = studentBlockingQueue.take();
                    //System.out.println(student.getChineseScore());
                    student.show();
                }
            }catch (InterruptedException e){
                e.printStackTrace();
            }
    }
}
