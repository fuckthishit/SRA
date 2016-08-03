/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;



/**
 *
 * @author ndrs
 */
public class sampleForecast {
    
  public static void main( String args[] )
    {
      ProjectsDB prj=new ProjectsDB();
     String x= prj.createdNewTableTest();
     System.out.println(x);

    }
    
    
    
}
