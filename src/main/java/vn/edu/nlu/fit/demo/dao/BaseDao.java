package vn.edu.nlu.fit.demo.dao;

import com.mysql.cj.jdbc.MysqlDataSource;
import org.jdbi.v3.core.Jdbi;

import java.sql.SQLException;

public abstract class BaseDao {

    private static Jdbi jdbi;

    protected static Jdbi getJdbi() {
        if (jdbi == null) {
            init();
        }
        return jdbi;
    }

    private static void init() {
        MysqlDataSource dataSource = new MysqlDataSource();

        String url = "jdbc:mysql://"
                + DBPorperties.host()
                + ":" + DBPorperties.port()
                + "/" + DBPorperties.dbname()
                + "?" + DBPorperties.option();

        dataSource.setURL(url);
        dataSource.setUser(DBPorperties.username());
        dataSource.setPassword(DBPorperties.password());

        try {
            dataSource.setUseSSL(false);
            dataSource.setAllowPublicKeyRetrieval(true);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        jdbi = Jdbi.create(dataSource);
    }
}
