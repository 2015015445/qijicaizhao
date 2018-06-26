package com.cniia.ny.web.control.configMangage;


import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;


public class InsertIntoDB {
        //读取文本操作
        public static String[] writeToDat(String path) {
                  File file = new File(path);
                  List<String> list = new ArrayList<String>();
                  String []strings = null;
                  try {
                   BufferedReader bw = new BufferedReader(new FileReader(file));
                   String line = null;
                   //因为不知道有几行数据，所以先存入list集合中
                   while((line = bw.readLine()) != null){
                    list.add(line);
                   }
                   bw.close();
                  } catch (IOException e) {
                   e.printStackTrace();
                  }
                  //确定数组长度
                  strings = new String[list.size()];
                  for(int i=0;i<list.size();i++){
                   String s = (String) list.get(i);
                   strings[i] = s;
                  }
                  return strings;
                 }
        //连接数据库
        public static Connection getConnection(String data,String user,String pwd){
                
                Connection conn = null;
                try {
                        Class.forName("com.mysql.jdbc.Driver");
                        conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/"+ data +"?characterEncoding=UTF-8",user , pwd);
                } catch (Exception e) {
                        e.printStackTrace();
                }
                return conn;
        }
        //插入数据库,只能为一个字段
        public static boolean insertInto(String data,String table,String field,String user,String pwd,String []str){
                try {
                        Connection conn = getConnection(data,user,pwd);
                        conn.setAutoCommit(false);
                        String sql = "INSERT INTO"+ table + "("+ field +") VALUES (?);";
                        PreparedStatement pstmt = conn.prepareStatement(sql);
                        for (int i = 0; i < str.length; i++) {
                                pstmt.setString(1, str[i]);
                                pstmt.executeUpdate();
//                        conn.commit();
                        }
                        conn.commit();
                        return true;
                } catch (SQLException e) {
                        // TODO Auto-generated catch block
                        e.printStackTrace();
                        return false;
                }
                
        }
        public static String[] query(String data,String table,String field,String user,String pwd){
                try {
                        String []str = null;
                        int i = 0;
                        Connection conn = getConnection(data,user,pwd);
                        String sql = "select "+ field +" from" + table +";" ;
                        PreparedStatement pstmt = conn.prepareStatement(sql);
                        ResultSet rs = pstmt.executeQuery();
                        while (rs.next()) {
                                str[i] = rs.getString(field);
                                i++;
                        }
                        return str;
                } catch (SQLException e) {
                        // TODO Auto-generated catch block
                        e.printStackTrace();
                        return null;
                }
                
        }
        public  static void main(String[] args){
                String []str2 = null;
                String []str = null;
                String []str3 = null;
                boolean flage1 = true;
                boolean flage2 = true;
                boolean flage3 = true;
                System.out.println("请输入目标文件绝对路径:");
                Scanner sc = new Scanner(System.in);
                String path = sc.next();
                while(flage3){
                        if (path!=null&&!path.equals("")) {
                                flage3 = false;
                                str = writeToDat(path);
                        }else {
                                System.out.println("输入不能为空");
                        }
                }
                System.out.println("请输入所需连接的数据库名，表名，字段名(只能为一个)，用户名，密码，用“#”隔开:");
                String strA = sc.next();
                while(flage1){
                        if (strA!=null&&!strA.equals("")) {
                                flage1 = false;
                                while(flage2){
                                        if (strA.indexOf("#")>=0) {
                                                flage2 = false;
                                                str2 = strA.split("#");
                                        }else {
                                                System.out.println("您输入的格式有错，请重新输入");
                                        }
                                        
                                }
                        }else {
                                System.out.println("输入不能为空");
                        }
                        
                        
                        
                }
                boolean b = insertInto(str2[0], str2[1], str2[2], str2[3], str2[4],str);
                if(b){
                        System.out.println("插入成功!");
                }else {
                        System.out.println("插入失败!");
                }
                str3 = query(str2[0], str2[1], str2[2], str2[3], str2[4]);
                for (int i = 0; i < str3.length; i++) {
                        System.out.println(str3[i]);
                }
        }

}