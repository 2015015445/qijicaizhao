package com.kang;  
  
import java.util.ArrayList;  
import java.util.Collections;  
import java.util.Comparator;  
import java.util.HashMap;  
import java.util.List;  
import java.util.Map;  
import java.util.Map.Entry;  

import test.*; 
import test.MySQLDataBase;

//基于用户的协同过滤算法  
public class UCF {  
	
    public  String suanfa(int age, int size, int salary, int degree, int gender, int major) {  
        Map<String, Map<String, Integer>> userPerfMap = new HashMap<String, Map<String, Integer>>();  
        Map<String, Integer> pref1 = new HashMap<String, Integer>();  
        pref1.put("age", 6);  
        pref1.put("size", 6);  
        pref1.put("salary", 4);  
        pref1.put("degree", 1);  
        pref1.put("gender", 1);  
        pref1.put("major", 3);  
        userPerfMap.put("p1", pref1);  
        Map<String, Integer> pref2 = new HashMap<String, Integer>();  
        pref2.put("age", 4);  
        pref2.put("size", 4);  
        pref2.put("salary", 1);  
        pref2.put("degree", 1);  
        pref2.put("gender", 1);  
        pref2.put("major", 2);  
        userPerfMap.put("p2", pref2);  
        Map<String, Integer> pref3 = new HashMap<String, Integer>();  
        pref3.put("age", 5);  
        pref3.put("size", 7);  
        pref3.put("salary", 3);  
        pref3.put("degree", 1);  
        pref3.put("gender", 1);  
        pref3.put("major", 4);  
        userPerfMap.put("p3", pref3);  
        Map<String, Integer> pref4 = new HashMap<String, Integer>();  
        pref4.put("age", 5);  
        pref4.put("size", 2);  
        pref4.put("salary", 2);  
        pref4.put("degree", 0);  
        pref4.put("gender", 1);  
        pref4.put("major", 1);  
        userPerfMap.put("p4", pref4);  
        Map<String, Integer> pref5 = new HashMap<String, Integer>();  
        pref5.put("age", 6);  
        pref5.put("size", 1);  
        pref5.put("salary", 1);  
        pref5.put("degree", 1);  
        pref5.put("gender", 1);  
        pref5.put("major", 4);  
        userPerfMap.put("p5", pref5);  
        
        Map<String, Integer> pref6 = new HashMap<String, Integer>();  
        pref6.put("age", 6);  
        pref6.put("size", 1);  
        pref6.put("salary", 1);  
        pref6.put("degree", 1);  
        pref6.put("gender", 1);  
        pref6.put("major", 4);  
        userPerfMap.put("p6", pref6);
        //导入用户的简历。。。未完成
        
        Map<String, Integer> pref7 = new HashMap<String, Integer>();  
        pref7.put("age",age);  
        pref7.put("size", size);  
        pref7.put("salary", salary);  
        pref7.put("degree", degree);  
        pref7.put("gender", gender);  
        pref7.put("major", major);  
        userPerfMap.put("p7", pref7);
        
        //显示用户与之前的记录皮尔逊相关系数
        Map<String, Double> simUserSimMap = new HashMap<String, Double>();  
        System.out.println("皮尔逊相关系数:");  
  
        for (Entry<String, Map<String, Integer>> userPerfEn : userPerfMap.entrySet()) {  
            String userName = userPerfEn.getKey();  
            if (!"p7".equals(userName)) {  
                double sim = getUserSimilar(pref7, userPerfEn.getValue());  
                System.out.println("p7与" + userName + "之间的相关系数:" + sim);  
                simUserSimMap.put(userName, sim);  
            }  
        }  
        //用户对。。。的评价
        Map<String, Map<String, Integer>> simUserObjMap = new HashMap<String, Map<String, Integer>>();  
        Map<String, Integer> pobjMap1 = new HashMap<String, Integer>();  
        pobjMap1.put("开发工程师", 3);  
        pobjMap1.put("软件测试", 4);  
        pobjMap1.put("质量(QA/QC)", 3);  
        pobjMap1.put("机械工程师", 2); 
        pobjMap1.put("FPGA工程师", 3); 
        pobjMap1.put("兼职教师", 3); 
        pobjMap1.put("项目经理", 5); 
        pobjMap1.put("大数据开发", 4); 
        pobjMap1.put("技术支持", 7); 
        pobjMap1.put("销售总监", 4); 
        pobjMap1.put("销售经理", 1); 
        pobjMap1.put("嵌入式软件工程师", 3); 
        pobjMap1.put("市场总监", 6); 
        pobjMap1.put("服务器产品部", 6);
        pobjMap1.put("系统工程师", 4);
        pobjMap1.put("部门经理", 6);
        pobjMap1.put("电子维修工程师", 3);
        pobjMap1.put("信息技术专员", 5);
        pobjMap1.put("网络工程师", 3);
        pobjMap1.put("Helpdesk", 6);
        pobjMap1.put("信息技术经理/主管", 3);
        pobjMap1.put("网络管理员", 3);
        pobjMap1.put("人力资源专员", 8);
        pobjMap1.put("办公室主任", 2);
        pobjMap1.put("权证", 3);
        pobjMap1.put("培训师/讲师", 1);
        pobjMap1.put("移动通信工程", 3);
        simUserObjMap.put("p1", pobjMap1);  
        Map<String, Integer> pobjMap2 = new HashMap<String, Integer>();  
        pobjMap2.put("开发工程师", 3);  
        pobjMap2.put("软件测试", 4);  
        pobjMap2.put("质量(QA/QC)", 3);  
        pobjMap2.put("机械工程师", 1); 
        pobjMap2.put("FPGA工程师", 3); 
        pobjMap2.put("兼职教师", 3); 
        pobjMap2.put("项目经理", 6); 
        pobjMap2.put("大数据开发", 4); 
        pobjMap2.put("技术支持", 4); 
        pobjMap2.put("销售总监", 5); 
        pobjMap2.put("销售经理", 3); 
        pobjMap2.put("嵌入式软件工程师", 3); 
        pobjMap2.put("市场总监", 3); 
        pobjMap2.put("服务器产品部", 6);
        pobjMap2.put("系统工程师", 6);
        pobjMap2.put("部门经理", 4);
        pobjMap2.put("电子维修工程师", 3);
        pobjMap2.put("信息技术专员", 2);
        pobjMap2.put("网络工程师", 3);
        pobjMap2.put("Helpdesk", 3);
        pobjMap2.put("信息技术经理/主管", 3);
        pobjMap2.put("网络管理员", 5);
        pobjMap2.put("人力资源专员", 3);
        pobjMap2.put("办公室主任", 4);
        pobjMap2.put("权证", 3);
        pobjMap2.put("培训师/讲师", 1);
        pobjMap2.put("移动通信工程", 3);
        simUserObjMap.put("p2", pobjMap2);  
        Map<String, Integer> pobjMap3 = new HashMap<String, Integer>();  
        pobjMap3.put("开发工程师", 3);  
        pobjMap3.put("软件测试", 4);  
        pobjMap3.put("质量(QA/QC)", 3);  
        pobjMap3.put("机械工程师", 3); 
        pobjMap3.put("FPGA工程师", 3); 
        pobjMap3.put("兼职教师", 3); 
        pobjMap3.put("项目经理", 1); 
        pobjMap3.put("大数据开发", 4); 
        pobjMap3.put("技术支持", 4); 
        pobjMap3.put("销售总监", 2); 
        pobjMap3.put("销售经理", 3); 
        pobjMap3.put("嵌入式软件工程师", 3); 
        pobjMap3.put("市场总监", 3); 
        pobjMap3.put("服务器产品部", 6);
        pobjMap3.put("系统工程师", 6);
        pobjMap3.put("部门经理", 4);
        pobjMap3.put("电子维修工程师", 3);
        pobjMap3.put("信息技术专员", 7);
        pobjMap3.put("网络工程师", 3);
        pobjMap3.put("Helpdesk", 6);
        pobjMap3.put("信息技术经理/主管", 3);
        pobjMap3.put("网络管理员", 5);
        pobjMap3.put("人力资源专员", 3);
        pobjMap3.put("办公室主任", 4);
        pobjMap3.put("权证", 3);
        pobjMap3.put("培训师/讲师", 3);
        pobjMap3.put("移动通信工程", 3);
        simUserObjMap.put("p3", pobjMap3);  
 
                
        System.out.println("推荐结果:" + getRecommend(simUserObjMap, simUserSimMap)); 
        String msg = getRecommend(simUserObjMap, simUserSimMap);
        return msg;
    }  
  
    //皮尔森相关系数  
    public static double getUserSimilar(Map<String, Integer> pm1, Map<String, Integer> pm2) {  
        int n = 0;// 数量n  
        int sxy = 0;// Σxy=x1*y1+x2*y2+....xn*yn  
        int sx = 0;// Σx=x1+x2+....xn  
        int sy = 0;// Σy=y1+y2+...yn  
        int sx2 = 0;// Σx2=(x1)2+(x2)2+....(xn)2  
        int sy2 = 0;// Σy2=(y1)2+(y2)2+....(yn)2  
        for (Entry<String, Integer> pme : pm1.entrySet()) {  
            String key = pme.getKey();  
            Integer x = pme.getValue();  
            Integer y = pm2.get(key);  
            if (x != null && y != null) {  
                n++;  
                sxy += x * y;  
                sx += x;  
                sy += y;  
                sx2 += Math.pow(x, 2);  
                sy2 += Math.pow(y, 2);  
            }  
        }  
        // p=(Σxy-Σx*Σy/n)/Math.sqrt((Σx2-(Σx)2/n)(Σy2-(Σy)2/n));  
        double sd = sxy - sx * sy / n;  
        double sm = Math.sqrt((sx2 - Math.pow(sx, 2) / n) * (sy2 - Math.pow(sy, 2) / n));  
        return Math.abs(sm == 0 ? 1 : sd / sm);  
    }  
  
    //获取推荐结果  
    public static String getRecommend(Map<String, Map<String, Integer>> simUserObjMap,  
            Map<String, Double> simUserSimMap) {  
        Map<String, Double> objScoreMap = new HashMap<String, Double>();  
        for (Entry<String, Map<String, Integer>> simUserEn : simUserObjMap.entrySet()) {  
            String user = simUserEn.getKey();  
            double sim = simUserSimMap.get(user);  
            for (Entry<String, Integer> simObjEn : simUserEn.getValue().entrySet()) {  
                double objScore = sim * simObjEn.getValue();//加权（相似度*评分）  
                String objName = simObjEn.getKey();  
                if (objScoreMap.get(objName) == null) {  
                    objScoreMap.put(objName, objScore);  
                } else {  
                    double totalScore = objScoreMap.get(objName);  
                    objScoreMap.put(objName, totalScore + objScore);//将所有用户的加权评分作为最后的推荐结果数据  
                }  
            }  
        }  
        List<Entry<String, Double>> enList = new ArrayList<Entry<String, Double>>(objScoreMap.entrySet());  
        Collections.sort(enList, new Comparator<Map.Entry<String, Double>>() {//排序  
            public int compare(Map.Entry<String, Double> o1, Map.Entry<String, Double> o2) {  
                Double a = o1.getValue() - o2.getValue();  
                if (a == 0) {  
                    return 0;  
                } else if (a > 0) {  
                    return 1;  
                } else {  
                    return -1;  
                }  
            }  
        });  
        for (Entry<String, Double> entry : enList) {  
            System.out.println(entry.getKey()+"的加权推荐值:"+entry.getValue());  
        }  
        return enList.get(enList.size() - 1).getKey();//返回推荐结果  
    }  
} 