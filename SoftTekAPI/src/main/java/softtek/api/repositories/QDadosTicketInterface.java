package softtek.api.repositories;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.data.jpa.repository.JpaRepository;
import softtek.api.models.QDadosTicket;
import java.util.Optional;

public interface QDadosTicketInterface extends JpaRepository<QDadosTicket, Integer> {

    @Query("SELECT q FROM QDadosTicket q WHERE q.idTicket = :idTicket")
    Optional<QDadosTicket> findByIdTicket(@Param("idTicket") Integer idTicket);
}
