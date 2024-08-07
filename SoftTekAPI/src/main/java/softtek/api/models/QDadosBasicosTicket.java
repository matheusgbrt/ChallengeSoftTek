package softtek.api.models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import org.hibernate.annotations.Immutable;
import org.hibernate.annotations.Nationalized;

import java.time.Instant;

/**
 * Mapping for DB view
 */
@Entity
@Table(name = "QDadosBasicosTicket",schema="dbo")
@Immutable
public class QDadosBasicosTicket {
    @Id
    @NotNull
    @Column(name = "idTicket", nullable = false)
    private Integer idTicket;

    @Size(max = 50)
    @Nationalized
    @Column(name = "numeroTicket", length = 50)
    private String numeroTicket;

    @Size(max = 500)
    @Nationalized
    @Column(name = "descricaoTicket", length = 500)
    private String descricaoTicket;

    @Size(max = 100)
    @Nationalized
    @Column(name = "descricaoEstadoTicket", length = 100)
    private String descricaoEstadoTicket;

    @Column(name = "dataAbertura")
    private Instant dataAbertura;

    @Column(name = "dataAtualizacao")
    private Instant dataAtualizacao;

    @Column(name = "dataRelatorioResolvido")
    private Instant dataRelatorioResolvido;

    @Column(name = "dataEncerramento")
    private Instant dataEncerramento;

    public Integer getIdTicket() {
        return idTicket;
    }

    public String getNumeroTicket() {
        return numeroTicket;
    }

    public String getDescricaoTicket() {
        return descricaoTicket;
    }

    public String getDescricaoEstadoTicket() {
        return descricaoEstadoTicket;
    }

    public Instant getDataAbertura() {
        return dataAbertura;
    }

    public Instant getDataAtualizacao() {
        return dataAtualizacao;
    }

    public Instant getDataRelatorioResolvido() {
        return dataRelatorioResolvido;
    }

    public Instant getDataEncerramento() {
        return dataEncerramento;
    }

    protected QDadosBasicosTicket() {
    }
}