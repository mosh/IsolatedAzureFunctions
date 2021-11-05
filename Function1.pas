namespace FunctionApp3;

uses
  Microsoft.Azure.Functions.Worker,
  Microsoft.Azure.Functions.Worker.Http,
  System.Net;

type
  Function1 = public static class
  private
  protected
  public
    [&Function('Function1')]
    class method Run([HttpTrigger(AuthorizationLevel.Function, 'get', 'post')]request:HttpRequestData;
      executionContext:FunctionContext):Task<HttpResponseData>;
    begin

      var logger := executionContext.GetLogger('Function1');
      logger.LogInformation('Oxygene HTTP trigger function processed a request.');

      var response := request.CreateResponse(HttpStatusCode.OK);

      response.Headers.Add('Content-Type', 'text/plain; charset=utf-8');
      response.WriteString('Welcome to Azure Functions!');

      exit Task.FromResult(response);

    end;
  end;


end.