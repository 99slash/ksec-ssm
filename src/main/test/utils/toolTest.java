package utils;

import entity.Student;
import org.junit.Test;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

public class toolTest {

    @Test
    public void test1(){
        //固定容器大小为5
        BlockingQueue<Student> stus = new LinkedBlockingQueue<Student>(5);

        Thread produce = new Thread(new Produce(stus));

        Thread consume = new Thread(new Consume(stus));

        produce.start();

        consume.start();
    }

}