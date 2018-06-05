FROM microsoft/dotnet:2.1.0-aspnetcore-runtime

WORKDIR /app

COPY bin/Release/PublishOutput/ ./

COPY Libs/ ./

CMD export ASPNETCORE_URLS=http://*:$PORT && dotnet MyAwesomeApp.dll
