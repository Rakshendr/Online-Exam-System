package abc;
import java.sql.*;
import java.util.*;
public class StudentDao {
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
	
	
	public static int save(Student s)
	{
		int status=0;
		try
		{
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("insert into student values(?,?,?,?,?)");
			ps.setInt(1,s.getId());
			ps.setString(2,s.getName());
			ps.setString(3,s.getPassword());
			ps.setString(4,s.getEmail());
			ps.setString(5,s.getBranch());
			status=ps.executeUpdate();
		}
		catch(Exception ex)
		{
			
		}
		return status;
	}
}
