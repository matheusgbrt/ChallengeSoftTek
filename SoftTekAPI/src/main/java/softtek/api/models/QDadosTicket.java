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
@Immutable
@Table(name = "QDadosTickets")
public class QDadosTicket {
    @Id
    @NotNull
    @Column(name = "idTicket", nullable = false)
    private Integer idTicket;

    @Size(max = 100)
    @Nationalized
    @Column(name = "descricaoPrioridadeTicket", length = 100)
    private String descricaoPrioridadeTicket;

    @Size(max = 100)
    @Nationalized
    @Column(name = "descricaoSintomaTicket", length = 100)
    private String descricaoSintomaTicket;

    @Size(max = 50)
    @Nationalized
    @Column(name = "numeroTicket", length = 50)
    private String numeroTicket;

    @Size(max = 500)
    @Nationalized
    @Column(name = "descricaoTicket", length = 500)
    private String descricaoTicket;

    @Size(max = 500)
    @Nationalized
    @Column(name = "resolucaoTicket", length = 500)
    private String resolucaoTicket;

    @Size(max = 100)
    @Nationalized
    @Column(name = "qualificacaoSintoma", length = 100)
    private String qualificacaoSintoma;

    @Column(name = "dataAbertura")
    private Instant dataAbertura;

    @Column(name = "dataAtualizacao")
    private Instant dataAtualizacao;

    @Column(name = "dataRelatorioResolvido")
    private Instant dataRelatorioResolvido;

    @Column(name = "dataEncerramento")
    private Instant dataEncerramento;

    @Size(max = 100)
    @Nationalized
    @Column(name = "descricaoSubcategoriaRelatorio", length = 100)
    private String descricaoSubcategoriaRelatorio;

    @Size(max = 100)
    @Nationalized
    @Column(name = "descricaoEstadoTicket", length = 100)
    private String descricaoEstadoTicket;

    @Size(max = 100)
    @Nationalized
    @Column(name = "descricaoCategoriaRelatorio", length = 100)
    private String descricaoCategoriaRelatorio;

    @Size(max = 100)
    @Nationalized
    @Column(name = "nomeLocal", length = 100)
    private String nomeLocal;

    @Size(max = 100)
    @Nationalized
    @Column(name = "descricaoCategoriaTecnico", length = 100)
    private String descricaoCategoriaTecnico;

    @Size(max = 100)
    @Nationalized
    @Column(name = "descricaoGrupoAtribuicao", length = 100)
    private String descricaoGrupoAtribuicao;

    @Size(max = 100)
    @Nationalized
    @Column(name = "descricaoGrupoCategoriaTecnico", length = 100)
    private String descricaoGrupoCategoriaTecnico;

    @Size(max = 100)
    @Nationalized
    @Column(name = "descricaoGrupoSolicitante", length = 100)
    private String descricaoGrupoSolicitante;

    public Integer getIdTicket() {
        return idTicket;
    }

    public String getDescricaoPrioridadeTicket() {
        return descricaoPrioridadeTicket;
    }

    public String getDescricaoSintomaTicket() {
        return descricaoSintomaTicket;
    }

    public String getNumeroTicket() {
        return numeroTicket;
    }

    public String getDescricaoTicket() {
        return descricaoTicket;
    }

    public String getResolucaoTicket() {
        return resolucaoTicket;
    }

    public String getQualificacaoSintoma() {
        return qualificacaoSintoma;
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

    public String getDescricaoSubcategoriaRelatorio() {
        return descricaoSubcategoriaRelatorio;
    }

    public String getDescricaoEstadoTicket() {
        return descricaoEstadoTicket;
    }

    public String getDescricaoCategoriaRelatorio() {
        return descricaoCategoriaRelatorio;
    }

    public String getNomeLocal() {
        return nomeLocal;
    }

    public String getDescricaoCategoriaTecnico() {
        return descricaoCategoriaTecnico;
    }

    public String getDescricaoGrupoAtribuicao() {
        return descricaoGrupoAtribuicao;
    }

    public String getDescricaoGrupoCategoriaTecnico() {
        return descricaoGrupoCategoriaTecnico;
    }

    public String getDescricaoGrupoSolicitante() {
        return descricaoGrupoSolicitante;
    }

    protected QDadosTicket() {
    }
}