
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System.Diagnostics.Metrics;


class Program
{
    static async Task Main(string[] args)
    {
        await dadosbasicosCall();
    }

    static async Task dadosbasicosCall()
    {
        string baseUrl = "http://localhost:8080/api/alltickets?page=";
        int startId = 1;
        int endId = 5;

        HttpClient client = new HttpClient();

        for (int id = startId; id <= endId; id++)
        {
            string url = string.Format(baseUrl + "{0}", id);
            Console.WriteLine($"Requesting {url}");

            try
            {
                HttpResponseMessage response = await client.GetAsync(url);
                response.EnsureSuccessStatusCode();

                string responseData = await response.Content.ReadAsStringAsync();
                dynamic jsonObject = JsonConvert.DeserializeObject(responseData);

                JArray contentArray = (JArray)jsonObject["content"];
                string fileName = $"{id}.json";
                File.WriteAllText(fileName, JsonConvert.SerializeObject(contentArray, Newtonsoft.Json.Formatting.Indented));

                Console.WriteLine($"Data for ticket {id} saved to {fileName}");
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error fetching data for ticket {id}: {ex.Message}");
            }
        }

        client.Dispose();
        Console.WriteLine("Data fetching completed.");
    }

    static async Task comentariosCall()
    {
        string baseUrl = "http://localhost:8080/api/comentariosticket?page=1&idticket=";
        int startId = 1;
        int endId = 50;

        HttpClient client = new HttpClient();

        for (int id = startId; id <= endId; id++)
        {
            string url = string.Format(baseUrl + "{0}", id);
            Console.WriteLine($"Requesting {url}");

            try
            {
                HttpResponseMessage response = await client.GetAsync(url);
                response.EnsureSuccessStatusCode();

                string responseData = await response.Content.ReadAsStringAsync();
                dynamic jsonObject = JsonConvert.DeserializeObject(responseData);

                JArray contentArray = (JArray)jsonObject["content"];
                string fileName = $"{id}.json";
                File.WriteAllText(fileName, JsonConvert.SerializeObject(contentArray, Newtonsoft.Json.Formatting.Indented));

                Console.WriteLine($"Data for ticket {id} saved to {fileName}");
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error fetching data for ticket {id}: {ex.Message}");
            }
        }

        client.Dispose();
        Console.WriteLine("Data fetching completed.");
    }
}