package softtek.api.models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import org.hibernate.annotations.Immutable;
import org.hibernate.annotations.Nationalized;

/**
 * Mapping for DB view
 */
@Entity
@Immutable
public class QComentariosTicket {
    @NotNull
    @Column(name = "idTicket", nullable = false)
    private Integer idTicket;

    @Size(max = 500)
    @Nationalized
    @Column(name = "textoComentario", length = 500)
    private String textoComentario;

    @Size(max = 50)
    @Nationalized
    @Column(name = "numeroTicket", length = 50)
    private String numeroTicket;
    @Id
    @NotNull
    @Column(name = "idComentario", nullable = false)
    private Integer idComentario;

    public Integer getIdTicket() {
        return idTicket;
    }

    public String getTextoComentario() {
        return textoComentario;
    }

    public String getNumeroTicket() {
        return numeroTicket;
    }

    public Integer getIdComentario() {
        return idComentario;
    }

    protected QComentariosTicket() {
    }
}