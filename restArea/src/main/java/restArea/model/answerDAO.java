package restArea.model;

import java.io.InputStream;

import javax.xml.parsers.FactoryConfigurationError;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

// answer_board DAO (�� �亯)
public class answerDAO {
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
   public int answer(answerVO avo) {
      SqlSession session = sqlSessionFactory.openSession(true);
      int cnt  = session.insert("answer", avo);
      return cnt;
   }
      
}