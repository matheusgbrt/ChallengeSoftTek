package softtek.api.services;

import softtek.api.config.DatabaseHealthCheck;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.core.io.ClassPathResource;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import softtek.api.models.QDadosBasicosTicket;
import softtek.api.repositories.QDadosBasicosTicketInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Service
public class QDadosBasicosTicketService {

    @Autowired
    private QDadosBasicosTicketInterface repository;
    private final ObjectMapper objectMapper = new ObjectMapper();

    public Page<softtek.api.models.QDadosBasicosTicket> findAllTickets(Pageable pageable) {
        return repository.findAll(pageable);
    }

    private Page<QDadosBasicosTicket> findByIdTicketFallback(int idTicket, Pageable pageable) {
        try {
            ClassPathResource resource = new ClassPathResource("dadosbasicostickets/" + idTicket + ".json");
            QDadosBasicosTicket[] tickets = objectMapper.readValue(resource.getFile(), QDadosBasicosTicket[].class);

            List<QDadosBasicosTicket> ticketList = new ArrayList<>(Arrays.asList(tickets));

            // Implement pagination manually
            int start = (int) pageable.getOffset();
            int end = Math.min((start + pageable.getPageSize()), ticketList.size());
            return new PageImpl<>(ticketList.subList(start, end), pageable, ticketList.size());
        } catch (IOException e) {
            e.printStackTrace();
            return Page.empty(pageable);
        }
    }

}