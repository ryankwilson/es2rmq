
FROM microsoft/aspnetcore
LABEL Name=es2rmq Version=0.0.1 
WORKDIR /app
EXPOSE 5000
COPY ./out .

ENV ASPNETCORE_URLS http://*:5000

#ENTRYPOINT /bin/bash
ENTRYPOINT dotnet es2rmq.dll
