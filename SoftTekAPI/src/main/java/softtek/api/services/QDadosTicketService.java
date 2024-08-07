package softtek.api.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import softtek.api.models.QDadosTicket;
import softtek.api.repositories.QDadosTicketInterface;

import java.util.Optional;

@Service
public class QDadosTicketService {

    @Autowired
    private QDadosTicketInterface repository;

    public Optional<QDadosTicket> findByID(int idTicket) {
        return repository.findByIdTicket(idTicket);
    }

}