FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build-env
COPY ApiApp/ App/
WORKDIR /App
ENV ASPNETCORE_URLS=http://+:80
RUN dotnet restore
RUN dotnet publish -c Release -o publish
ENTRYPOINT ["dotnet", "./publish/ApiApp.dll"]