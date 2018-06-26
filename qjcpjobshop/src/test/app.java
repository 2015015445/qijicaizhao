package test;

import java.sql.Connection;

public class app {

    /**
     * @param args
     */
    public static void main(String[] args) {
        System.out.println("Starting to connecting database ...");
        long startTime = System.currentTimeMillis();
        MySQLDataBase database = new MySQLDataBase();
        Connection con = database.createConnector("root", "123456");
        //查找
        database.query(con, "select * from practice");
        //插入
        database.insert(con, "insert into practice(id,age,salary,degree,gender,major) values('wangwei',21,1,1,'男','软件工程')");
        database.query(con, "select * from practice");
        //修改
//        database.updates(con, "update practice set salary=8 where id='wangwei'");
//        database.query(con, "select * from practice");
        //删除
        database.delete(con, "delete from practice where id='wangwei'");
        database.query(con, "select * from practice");

        if(database.close(con)){
            System.out.println("Data Base connection has been closed!");
        }
        long endTime = System.currentTimeMillis();
        System.out.println("Time consume : "+(endTime-startTime) + " ms");

    }
 }
