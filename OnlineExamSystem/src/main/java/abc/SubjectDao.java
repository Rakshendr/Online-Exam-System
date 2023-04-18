package abc;
import java.sql.*;
import java.util.*;
public class SubjectDao {
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
	
	public static int save(Subject sub)
	{
		int status=0;
		try {
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("insert into subject values(?,?)");
			ps.setInt(1, sub.getSubid());
			ps.setString(2,sub.getSubname());
		status=ps.executeUpdate();
		}
		catch(Exception ex)
		{
			
		}
		return status;
	}
	
}
