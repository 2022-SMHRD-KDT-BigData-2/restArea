package restArea.model;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

// user_info DAO (회원 정보)
public class userDAO {
	private static SqlSessionFactory sqlSessionFactory;
	
	static {
		try {
			String resource = "restArea.Mapper/config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);					
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// -------------------------------------------
	
	public int join(userVO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.insert("mainJoin", vo);
		session.close();
		return cnt;	
	}
	
	
	
	

}
