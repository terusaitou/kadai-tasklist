package utils;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class DBUtil {
    private static final String PERSISTENCE_UNIT_NAME = "kadai_tasukukanri";
    private static EntityManagerFactory emf;

    public static EntityManager createEntityManager() {
        return (EntityManager) getEntityManagerFactory().createEntityManager();
    }

    private static EntityManagerFactory getEntityManagerFactory() {
        if(emf == null) {
            emf = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
        }

        return emf;
    }

    public static EntityManager createEntityManager1() {
        // TODO 自動生成されたメソッド・スタブ
        return null;
    }
}
