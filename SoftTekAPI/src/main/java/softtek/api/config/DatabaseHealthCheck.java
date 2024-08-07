package softtek.api.config;

import jakarta.annotation.PostConstruct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;



@Component
public class DatabaseHealthCheck {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    private boolean isDatabaseUp;

    @PostConstruct
    public void checkDatabaseConnection() {
        try {
            jdbcTemplate.execute("SELECT 1");
            isDatabaseUp = true;
        } catch (Exception e) {
            isDatabaseUp = false;
        }
    }

    public boolean isDatabaseUp() {
        return isDatabaseUp;
    }
}