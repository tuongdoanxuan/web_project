package vn.edu.nlu.fit.demo.dao;

import com.mysql.cj.jdbc.MysqlDataSource;
import org.jdbi.v3.core.Jdbi;

import java.sql.SQLException;

public abstract class BaseDao {
    private Jdbi jdbi;

    protected Jdbi get(){
        if(jdbi == null){
            makeConnection();
        }
        return jdbi;
    }
    private void makeConnection(){
        MysqlDataSource src = new MysqlDataSource();
        String url = "jbbc:mysql://" +DBPorperties.host()+":"+DBPorperties.port()+"/"+DBPorperties.dbname()+"?"+DBPorperties.option();
        src.setURL(url);
        src.setUser(DBPorperties.username());
        src.setPassword(DBPorperties.password());

        try {
            src.setUseCompression(true);
            src.setAutoReconnect(true);
        }
        catch (SQLException e){
            throw new RuntimeException(e);
        }
        jdbi= Jdbi.create(src);
    }


}
