namespace FunctionApp3;

uses
  Microsoft.Extensions.Hosting,
  System.Linq;

type
  Program = class
  public
    class method Main(args: array of String): Task<Int32>;
    begin
      var host := new HostBuilder()
          .ConfigureFunctionsWorkerDefaults
          .Build;

      await host.RunAsync;
    end;

  end;


end.