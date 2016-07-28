package db;

import entity.Projects;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ProjectsDB {
    
    public boolean createProject(Projects project){
          try {
            DBConnectionFactory myFactory = DBConnectionFactory.getInstance();
            Connection conn = myFactory.getConnection();
            String query = "insert into projects values (?,?,?,?,?,?,?,?)";
            PreparedStatement pstmt = conn.prepareStatement(query);
            pstmt.setInt(1, project.getProject_num());
            pstmt.setString(2, project.getName());
            pstmt.setDate(3, (Date) project.getDate_created());
            pstmt.setDate(4, (Date) project.getDate_initial());
            pstmt.setDate(5, (Date) project.getDate_end());
            pstmt.setString(6, project.getDescription());
            pstmt.setString(7, project.getStatus());
            pstmt.setString(8, project.getCreated_by());
            int isSuccess = pstmt.executeUpdate();
            pstmt.close();
            conn.close();
            return isSuccess==1;
        }
         catch (SQLException ex) {
            Logger.getLogger(UsersDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
       
    }
    public Integer getfinalProjectID(){
        int projectid = 0;
        try {
            DBConnectionFactory myFactory = DBConnectionFactory.getInstance();
            Connection conn = myFactory.getConnection();
            String query = "SELECT max(project_num) from projects;";
            PreparedStatement pstmt = conn.prepareStatement(query);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                do {
                   projectid = rs.getInt(1);
                } while (rs.next());
            }
            rs.close();
            pstmt.close();
            conn.close();
            return projectid;
        } catch (SQLException ex) {
            Logger.getLogger(ProjectsDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public ArrayList<Projects> getProjects() {
        try {
            DBConnectionFactory myFactory = DBConnectionFactory.getInstance();
            Connection conn = myFactory.getConnection();
            String query = "select * from Projects";
            PreparedStatement pstmt = conn.prepareStatement(query);
            ResultSet rs = pstmt.executeQuery();
            ArrayList<Projects> projects = null;
            if (rs.next()) {
                projects = new ArrayList<Projects>();
                Projects tempProject;
                do {
                    tempProject = new Projects();
                    tempProject.setProject_num(rs.getInt(1));
                    tempProject.setName(rs.getString(2));
                    tempProject.setDate_created(rs.getDate(3));
                    tempProject.setDate_initial(rs.getDate(4));
                    tempProject.setDate_end(rs.getDate(5));
                    tempProject.setDescription(rs.getString(6));
                    tempProject.setStatus(rs.getString(7));
                    tempProject.setCreated_by(rs.getString(8));
                    projects.add(tempProject);
                } while (rs.next());
            }
            rs.close();
            pstmt.close();
            conn.close();
            return projects;
        } catch (SQLException ex) {
            Logger.getLogger(ProjectsDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public Projects viewProject(int project_num) {
        try {
            DBConnectionFactory myFactory = DBConnectionFactory.getInstance();
            Connection conn = myFactory.getConnection();
            String query = "select * from Projects where project_num = ?";
            PreparedStatement pstmt = conn.prepareStatement(query);
            pstmt.setInt(1, project_num);
            ResultSet rs = pstmt.executeQuery();
            Projects project = null;
            if (rs.next()) {
                project = new Projects();
                project.setProject_num(rs.getInt(1));
                project.setName(rs.getString(2));
                project.setDate_created(rs.getDate(3));
                project.setDate_initial(rs.getDate(4));
                project.setDate_end(rs.getDate(5));
                project.setDescription(rs.getString(6));
                project.setStatus(rs.getString(7));
                project.setCreated_by(rs.getString(8));
            }
            rs.close();
            pstmt.close();
            conn.close();
            return project;
        } catch (SQLException ex) {
            Logger.getLogger(ProjectsDB.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
    public ArrayList<Projects> viewOtherProjects(int prob_id) {
        try {
            DBConnectionFactory myFactory = DBConnectionFactory.getInstance();
            Connection conn = myFactory.getConnection();
            String query = "select p.project_num,p.name,p.description,p.status from sra.projects p where p.project_num not in (select ps.project_num from `projects-problems`ps where ps.ProblemId=? );";
            PreparedStatement pstmt = conn.prepareStatement(query);
            pstmt.setInt(1, prob_id);
            ResultSet rs = pstmt.executeQuery();
             ArrayList<Projects> projList=null;
            if (rs.next()) {
              projList=new ArrayList<Projects>();
                 Projects project = null;
                do{
                    project = new Projects();
                project.setProject_num(rs.getInt(1));
                project.setName(rs.getString(2));
                project.setDescription(rs.getString(3));
                project.setStatus(rs.getString(4));
                projList.add(project);
                
                
                }
                while(rs.next());
                
                }
            rs.close();
            pstmt.close();
            conn.close();
            return projList;
        } catch (SQLException ex) {
            Logger.getLogger(ProjectsDB.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
}
