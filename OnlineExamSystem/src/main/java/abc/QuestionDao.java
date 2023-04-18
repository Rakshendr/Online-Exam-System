package abc;
import java.sql.*;
import java.util.*;
public class QuestionDao {
	public static Connection getConnection()
	{
		Connection con=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/exam","root","Rkc@1249");
			
		}
		catch(Exception e)
		{
			
		}
		return con;
	}
	
	public static int save(Question q)
	{
		int status=0;
		try
		{
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("insert into question values(?,?,?,?,?,?,?)");
			ps.setInt(1,q.getSubid());
			ps.setString(2,q.getQuestion());
			ps.setString(3,q.getOption1());
			ps.setString(4,q.getOption2());
			ps.setString(5,q.getOption3());
			ps.setString(6,q.getOption4());
			ps.setString(7,q.getAnswer());
			status=ps.executeUpdate();
		}
		catch(Exception ex)
		{
			
		}
		return status;
	}
}
