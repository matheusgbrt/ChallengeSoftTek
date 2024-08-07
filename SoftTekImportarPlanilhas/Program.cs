using System.Data;
using ClosedXML.Excel;
using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;

namespace SoftTekImportarPlanilhas
{
    internal class Program
    {

        static string? connectionString = "";
        static void Main(string[] args)
        {
            // Build configuration
            var configurationBuilder = new ConfigurationBuilder()
                .SetBasePath(AppContext.BaseDirectory)
                .AddJsonFile("appsettings.json", optional: false, reloadOnChange: true);

            IConfiguration configuration = configurationBuilder.Build();
            connectionString = configuration.GetConnectionString("SoftTek");

            DataTable dt = new DataTable();

            CreateDT(dt);
            InsertTicketsAndComments(dt);
        }

        static void CreateDT(DataTable dt)
        {
            using (var wb = new XLWorkbook("C:\\Users\\Inovea\\source\\repos\\SoftTekImportarPlanilhas\\SoftTekImportarPlanilhas\\ArquivosIterm\\PlanilhaIDS.xlsx"))
            {
                IXLWorksheet ws;
                if (wb.TryGetWorksheet("Sheet1", out ws))
                {
                    bool firstRow = true;
                    foreach (IXLRow row in ws.RowsUsed())
                    {
                        if (firstRow)
                        {
                            foreach (IXLCell cell in row.Cells())
                            {
                                dt.Columns.Add(cell.Value.ToString());
                            }
                            firstRow = false;
                        }
                        else
                        {
                            DataRow dataRow = dt.NewRow();
                            int columnIndex = 0;
                            foreach (IXLCell cell in row.Cells())
                            {
                                dataRow[columnIndex] = cell.Value.ToString();
                                columnIndex++;
                            }
                            dt.Rows.Add(dataRow);
                        }
                    }
                }
            }
        }

        static void InsertTicketsAndComments(DataTable dt)
        {
            using SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            SqlDataAdapter adapter = new SqlDataAdapter();
            foreach (DataRow row in dt.Rows)
            {
                string idEstadoRelatorio = row.Field<string>("IDEstadoRelatorio");
                string idCategoriaRelatorio = row.Field<string>("idCategoriaRelatorio");
                string idSubcategoriaRelatorio = row.Field<string>("idSubcategoriaRelatorio");
                string? idSintoma = row.Field<string?>("idSintoma");
                string? qualificacaoSintoma = row.Field<string>("qualificacaoSintoma");
                string idGrupoAtribuicao = row.Field<string>("idGrupoAtribuicao");
                string idGrupoCategoriaTecnico = row.Field<string>("idGrupoCategoriaTecnico");
                string idCategoriaTecnico = row.Field<string>("idCategoriaTecnico");
                string idPrioridadeTicket = row.Field<string>("idPrioridade");
                string idGrupoSolicitante = row.Field<string>("idGrupoSolicitante");
                string idLocal = row.Field<string>("idLocal");
                string? descricaoTicket = row.Field<string>("descricao");
                string? resolucaoTicket = row.Field<string>("resolucao");
                string dataabertura = row.Field<string>("dataabertura");
                string dataatualizacao = row.Field<string>("dataatualizacao");
                string dataencerramento = row.Field<string>("dataencerramento");
                string datarelatorioresolvido = row.Field<string>("dataresolucao");
                string numeroTicket = row.Field<string>("codigo");


                adapter.InsertCommand = new SqlCommand();
                adapter.InsertCommand.Connection = conn;
                adapter.InsertCommand.CommandText = "INSERT INTO [dbo].[Tickets] ([idEstadoRelatorio],[idCategoriaRelatorio],[idSintoma],[idGrupoAtribuicao],[idCategoriaTecnico],[idLocal],[idGrupoCategoriaTecnico],[idGrupoSolicitante],[idPrioridadeTicket],[numeroTicket],[descricaoTicket],[resolucaoTicket],[idsubcategoriaRelatorio],[qualificacaoSintoma],[dataAbertura],[dataAtualizacao],[dataRelatorioResolvido],[dataEncerramento])\r\n     VALUES(@idEstadoRelatorio,@idCategoriaRelatorio,@idSintoma,@idgrupoAtribuicao,@idCategoriaTecnico,@idLocal,@idGrupoCategoriaTecnico,@idGrupoSolicitante,@idPrioridadeTicket,@numeroTicket,@descricaoTicket,@resolucaoTicket,@idsubcategoriaRelatorio,@qualificacaoSintoma,@dataAbertura,@dataAtualizacao,@dataRelatorioResolvido, @dataEncerramento);SELECT SCOPE_IDENTITY()";
                adapter.InsertCommand.Parameters.AddWithValue("@idEstadoRelatorio", idEstadoRelatorio);
                adapter.InsertCommand.Parameters.AddWithValue("@idCategoriaRelatorio", idCategoriaRelatorio);
                adapter.InsertCommand.Parameters.AddWithValue("@idSubcategoriaRelatorio", idSubcategoriaRelatorio);
                adapter.InsertCommand.Parameters.AddWithValue("@idSintoma", idSintoma);
                adapter.InsertCommand.Parameters.AddWithValue("@qualificacaoSintoma", qualificacaoSintoma);
                adapter.InsertCommand.Parameters.AddWithValue("@idGrupoAtribuicao", idGrupoAtribuicao);
                adapter.InsertCommand.Parameters.AddWithValue("@idGrupoCategoriaTecnico", idGrupoCategoriaTecnico);
                adapter.InsertCommand.Parameters.AddWithValue("@idCategoriaTecnico", idCategoriaTecnico);
                adapter.InsertCommand.Parameters.AddWithValue("@idPrioridadeTicket", idPrioridadeTicket);
                adapter.InsertCommand.Parameters.AddWithValue("@idGrupoSolicitante", idGrupoSolicitante);
                adapter.InsertCommand.Parameters.AddWithValue("@idLocal", idLocal);
                adapter.InsertCommand.Parameters.AddWithValue("@dataabertura", dataabertura);
                adapter.InsertCommand.Parameters.AddWithValue("@resolucaoTicket", resolucaoTicket);
                adapter.InsertCommand.Parameters.AddWithValue("@descricaoTicket", descricaoTicket);
                adapter.InsertCommand.Parameters.AddWithValue("@dataatualizacao", dataatualizacao);
                adapter.InsertCommand.Parameters.AddWithValue("@dataencerramento", dataencerramento);
                adapter.InsertCommand.Parameters.AddWithValue("@datarelatorioresolvido", datarelatorioresolvido);
                adapter.InsertCommand.Parameters.AddWithValue("@numeroTicket", numeroTicket);
                var idticket = adapter.InsertCommand.ExecuteScalar();


                for(int i =1;i <= 9; i++)
                {
                    string comentario = row.Field<string>($"comentario{i}");
                    adapter.InsertCommand = new SqlCommand();
                    adapter.InsertCommand.Connection = conn;
                    adapter.InsertCommand.CommandText = string.Format("insert into Ticket_Comentarios values(@idTicket,@comentario)");
                    adapter.InsertCommand.Parameters.AddWithValue("@idticket", idticket);
                    adapter.InsertCommand.Parameters.AddWithValue("@comentario", comentario);
                    adapter.InsertCommand.ExecuteNonQuery();
                }
            }

        }
    }
    }
