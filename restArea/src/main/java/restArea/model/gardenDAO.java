package restArea.model;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

// img DAO (화원 이미지)
public class gardenDAO {
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
	
	// -----------------------------------------------------------------------------

}
