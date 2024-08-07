package softtek.api.services;

import org.springframework.data.domain.PageRequest;
import softtek.api.config.DatabaseHealthCheck;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import softtek.api.models.QComentariosTicket;
import softtek.api.repositories.QComentariosTicketInterface;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;


@Service
public class QComentariosTicketService {

    @Autowired
    private QComentariosTicketInterface repository;

    @Autowired
    private DatabaseHealthCheck databaseHealthCheck;

    private final ObjectMapper objectMapper = new ObjectMapper();

    public Page<QComentariosTicket> findByID(int idTicket, Pageable pageable) {
        if (databaseHealthCheck.isDatabaseUp()) {
            try {
                return repository.findByIdTicket(idTicket, pageable);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return findByIdTicketFallback(pageable);
    }


    private Page<QComentariosTicket> findByIdTicketFallback(Pageable pageable) {
        try {
            int pageNumber = pageable.getPageNumber() + 1; // Page numbers start from 1
            ClassPathResource resource = new ClassPathResource("comments/" + pageNumber + ".json");
            QComentariosTicket[] tickets = objectMapper.readValue(resource.getFile(), QComentariosTicket[].class);

            List<QComentariosTicket> ticketList = new ArrayList<>(Arrays.asList(tickets));

            return new PageImpl<>(ticketList, PageRequest.of(pageNumber - 1, pageable.getPageSize()), ticketList.size());
        } catch (IOException e) {
            e.printStackTrace();
            return Page.empty(pageable);
        }
    }
}