package softtek.api.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import softtek.api.models.QDadosTicket;
import softtek.api.services.QDadosTicketService;

import java.util.Optional;

@RestController
@RequestMapping("/api/dadosticket")
public class TicketController {

    @Autowired
    private QDadosTicketService service;

    @GetMapping
    public Optional<QDadosTicket> GetByID(
            @RequestParam(value = "idticket", defaultValue = "0") int idTicket) {
        return service.findByID(idTicket);
    }

}
