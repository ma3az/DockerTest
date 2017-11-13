FROM microsoft/aspnetcore:2.0
ARG source
WORKDIR /app
EXPOSE 9090
COPY ${source:-obj/Docker/publish} .
ENTRYPOINT ["dotnet", "DockerApiProject.dll"]
