package softtek.api.repositories;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import softtek.api.models.QComentariosTicket;


public interface QComentariosTicketInterface extends JpaRepository<softtek.api.models.QComentariosTicket, Integer> {


    @Query("SELECT q FROM QComentariosTicket q WHERE q.idTicket = :idTicket")
    Page<QComentariosTicket> findByIdTicket(@Param("idTicket") Integer idTicket, Pageable pageable);

}
