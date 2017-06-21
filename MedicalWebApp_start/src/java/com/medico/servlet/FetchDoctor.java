
package com.medico.servlet;
import com.medico.Connection.ConnectDb;
import com.medico.pojo.Doctor;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Iterator;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author puneet gupta
 */
@WebServlet(name = "FetchDoctor", urlPatterns = {"/FetchDoctor"})
public class FetchDoctor extends HttpServlet {
    
     public static String removeCharAt(String s, int pos) {
      return s.substring(0, pos) + s.substring(pos + 1);
   }
     
     @SuppressWarnings("empty-statement")
    protected ArrayList<String> timeConverter(String time){
        ArrayList<String> a = new ArrayList<String>();
            System.out.println(time);
            String s[];
            s = time.split("-");
            char value;
            int[] name = new int[2];
            boolean flag = true;
            int t =0,p=0,check=0,minutes,check1=0;
            for(int i = 0; i<s.length;i++){
                s[i] = s[i].toUpperCase();
                s[i] = s[i].trim();
                s[i] = removeCharAt(s[i],2);
         //       System.out.print(s[i]);
                if(s[i].indexOf("AM")>0){
                   String myNumbers = new String();
                                for (int ab = 0; ab < s[i].length(); ab++) 
                                    if (Character.isDigit(s[i].charAt(ab))) 
                                        myNumbers += s[i].charAt(ab);  
                                
                                s[i] = myNumbers;
                               if(p==0){
                                   p = s[i].length();
                                   value = s[i].charAt(p-2);
                                    check = Integer.parseInt(Character.toString(value));
                                    value = s[i].charAt(p-1);
                                    check1 = Integer.parseInt(Character.toString(value));
                                   if(check < 3)
                                       flag = false;
                                   else
                                       flag = true;
                               }
                                name[t] = Integer.parseInt(s[i]);
                                t++;
                }
                else if(s[i].indexOf("PM")>0){
                    String myNumbers = new String();
                                for (int ab = 0; ab < s[i].length(); ab++) 
                                    if (Character.isDigit(s[i].charAt(ab))) 
                                        myNumbers += s[i].charAt(ab);  
                                
                                s[i] = myNumbers;
                                if(p==0){
                                   p = s[i].length();
                                   value = s[i].charAt(p-2);
                                    check = Integer.parseInt(Character.toString(value));
                                     value = s[i].charAt(p-1);
                                    check1 = Integer.parseInt(Character.toString(value));
                                   if(check < 3)
                                       flag = false;
                                   else
                                       flag = true;
                               }
                                name[t] = Integer.parseInt(s[i]);
                                name[t] = name[t]+1200;
                                t++;
                } 
                else
                    s[i] = "";
            }
            minutes = check*10 + check1;
       //     System.out.print(minutes);
            int d,e,f;
             p =0;
            d = name[0];
            f = name[1];
            if(flag == true){
                minutes = 60 - minutes;
                e = d + minutes + 40;
                flag = false;
            }else{
                e = d + 30;
                flag = true;
            }
            String str,in1,in2;
            while(e <= f){
                
                if(d >= 1200){
                    d = d - 1200;
                    in1 = String.valueOf(d);
                    if(in1.length() == 4 || in1.length()==3)
                        in1 = new StringBuilder(in1).insert(in1.length()-2, ":").toString();
                    else if(in1.length() == 2)
                        in1 = new StringBuilder(in1).insert(in1.length()-2, "12:").toString();
                    else
                        in1 = new StringBuilder(in1).insert(in1.length()-1, "12:0").toString();
                    in1 = in1 + "PM";
                    
                }
                else{
                    in1 = String.valueOf(d);
                     if(in1.length() == 4 || in1.length()==3)
                        in1 = new StringBuilder(in1).insert(in1.length()-2, ":").toString();
                    else if(in1.length() == 2)
                        in1 = new StringBuilder(in1).insert(in1.length()-2, "12:").toString();
                    else
                        in1 = new StringBuilder(in1).insert(in1.length()-1, "12:0").toString();
                    in1 = in1 + "AM";
                   
                }
                if(e>=1200){
                    e = e - 1200;
                    
                    in2 = String.valueOf(e);
                    if(in2.length() == 4 || in2.length()==3)
                        in2 = new StringBuilder(in2).insert(in2.length()-2, ":").toString();
                    else if(in2.length() == 2)
                        in2 = new StringBuilder(in2).insert(in2.length()-2, "12:").toString();
                    else
                        in2 = new StringBuilder(in2).insert(in2.length()-1, "12:0").toString();
                    
                    in2 = in2 + "PM";
                    
                    e = e + 1200;
                }
                else{
                    in2 = String.valueOf(e);
                    if(in2.length() == 4 || in2.length()==3)
                        in2 = new StringBuilder(in2).insert(in2.length()-2, ":").toString();
                    else if(in2.length() == 2)
                        in2 = new StringBuilder(in2).insert(in2.length()-2, "12:").toString();
                    else
                        in2 = new StringBuilder(in2).insert(in2.length()-1, "12:0").toString();
                    in2 = in2 + "AM";
                     
                }
                d = e;
                if(flag == true){
                    minutes = 60 - minutes;
                    e = d + minutes + 40;
                    flag = false;
                }else{
                    e = d + 30;
                    flag = true;
                }
                    str = in1 + "-" + in2;
              //      System.out.println(str);
                    a.add(str);
            }
            
        return a;
    }
    public static ArrayList<String> setarrayList(ArrayList<String> a,String id){
      //  ArrayList<String> ab = new ArrayList<String>();
        Connection con = null;
        PreparedStatement psmt = null;
        String str = null;
        try{
            con = ConnectDb.getConnection();
            psmt = con.prepareStatement("select time from appointment where Doctor_id=?;");
            psmt.setInt(1,Integer.parseInt(id));
            ResultSet rs = psmt.executeQuery();
            String time = null;
            int ab = 0;
            while(rs.next()){
                time = rs.getString("time");
                Iterator<String> iter = a.iterator();
                while(iter.hasNext()){
                    str = iter.next();
                    if(str.equals(time)){
                       iter.remove();
                    }
                }
            }
            //for(String st : a){
              //  System.out.print(st);
            //}
        }catch(Exception e){
            e.printStackTrace();
        }
        return a;
    }
    
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    
        String id = request.getParameter("Doc_id");
       // System.out.print(id);
        Connection con = null;
        PreparedStatement psmt = null;
        String time = null;
        try{
            con = ConnectDb.getConnection();
            HttpSession session1 = request.getSession(false);
            psmt = con.prepareStatement("select * from doctor where Doctor_id=?;");
            psmt.setInt(1,Integer.parseInt(id));
            ResultSet rs = psmt.executeQuery();
             Doctor d = new Doctor();
            while(rs.next()){
                d.setId(rs.getInt("Doctor_id"));
                d.setName(rs.getString("Name"));
                d.setQual(rs.getString("Qualification").toUpperCase());
                d.setFees(rs.getString("INR"));
                d.setAddress(rs.getString("Address"));
                d.setImg(rs.getString("image"));
                d.setCity(rs.getString("City"));
                d.setExp(rs.getString("Experience"));
                d.setType(rs.getString("Type"));
                d.setFdescr(rs.getString("Full_Descr"));
                d.setDescr(rs.getString("Descr"));
                d.setPhn(rs.getString("ph_no"));
                d.setFeedback(rs.getString("Feedback"));
                d.setEmail(rs.getString("email"));
                d.setTimings(rs.getString("time"));
                time = rs.getString("time");
            }
            ArrayList<String> timings = timeConverter(time);
            timings = setarrayList(timings,id);
            session1.setAttribute("timings", timings);
            session1.setAttribute("doc",d);
            response.sendRedirect("Single_doctor.jsp");
        }catch(Exception e){
            
        }
    }
}
