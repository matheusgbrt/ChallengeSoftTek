package softtek.api.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import softtek.api.models.QDadosBasicosTicket;
import softtek.api.services.QDadosBasicosTicketService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.RequestParam;

@RestController
@RequestMapping("/api/alltickets")
public class TicketBasicoController {

    @Autowired
    private QDadosBasicosTicketService service;

    @GetMapping
    public Page<QDadosBasicosTicket> getAllTickets(
            @RequestParam(value = "page", defaultValue = "1") int page,
            @RequestParam(value = "size", defaultValue = "10") int size) {
        Pageable pageable = PageRequest.of(page -1, size);
        return service.findAllTickets(pageable);
    }

    // Add more endpoints as needed
}
