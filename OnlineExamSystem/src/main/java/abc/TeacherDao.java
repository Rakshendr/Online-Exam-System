package abc;
import java.sql.*;
import java.util.*;
public class TeacherDao {
	public static Connection getConnection()
	{
		Connection con=null;
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/exam","root","Rkc@1249");
		}
		catch(Exception e)
		{
			
		}
		return con;
	}
	
	
	public static int save(Teacher t)
	{
		int status=0;
		try
		{
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("insert into teacher values(?,?,?,?)");
			ps.setInt(1,t.getId());
			ps.setString(2,t.getPassword());
			ps.setString(3,t.getEmail());
			ps.setString(4,t.getContactno());
			status=ps.executeUpdate();
		}
		catch(Exception ex)
		{
			
		}
		return status;
		
	}
}
