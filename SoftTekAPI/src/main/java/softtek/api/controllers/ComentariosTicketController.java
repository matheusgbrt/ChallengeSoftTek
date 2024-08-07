package softtek.api.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import softtek.api.models.QComentariosTicket;
import softtek.api.services.QComentariosTicketService;

@RestController
@RequestMapping("/api/comentariosticket")
public class ComentariosTicketController {

    @Autowired
    private QComentariosTicketService service;

    @GetMapping
    public Page<QComentariosTicket> getByID(
            @RequestParam(value = "page", defaultValue = "1") int page,
            @RequestParam(value = "size", defaultValue = "10") int size,
            @RequestParam(value = "idticket", defaultValue = "0") int idticket) {
        Pageable pageable = PageRequest.of(page -1, size);
        return service.findByID(idticket,pageable);
    }

    // Add more endpoints as needed
}
