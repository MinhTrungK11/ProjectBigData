/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import com.datastax.driver.core.Cluster;
import com.datastax.driver.core.Host;
import com.datastax.driver.core.Metadata;
import com.datastax.driver.core.Session;
/**
 *
 * @author letua
 */
public class JDBCConnection {
    private Cluster cluster;
    private Session session;
    public void getJDBCConnection(String add , int port)
    {
        this.cluster = Cluster.builder().addContactPoint(add).withPort(port).build();
        final Metadata metadata = cluster.getMetadata();
        for (final Host host : metadata.getAllHosts())
        {
            System.out.println("VerSion" + host.getCassandraVersion());
        }
        this.session = cluster.connect();
    }
    public Session getSession()
    {
        return this.session;
    }
    public void close(){
        cluster.close();
    }
}


