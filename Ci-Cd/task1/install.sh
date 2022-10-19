wget https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb

sudo apt-get update && \
  sudo apt-get install -y dotnet-sdk-6.0

sudo apt-get update && \
  sudo apt-get install -y aspnetcore-runtime-6.0

mkdir SimpleAPISln
cd SimpleAPISln
mkdir src 
mkdir test
cd src
dotnet new webapi -n SimpleAPI
dotnet build 
cd .. 
cd test 
dotnet new xunit -n SimpleAPI.Tests
dotnet build 
cd .. 
dotnet new sln --name SimpleAPI
dotnet sln SimpleAPI.sln add src/SimpleAPI/SimpleAPI.csproj test/SimpleAPI.Tests/SimpleAPI.Tests.csproj

dotnet add test/SimpleAPI.Tests/SimpleAPI.Tests.csproj reference src/SimpleAPI/SimpleAPI.csproj

dotnet build
cd src
cd SimpleAPI
dotnet run


namespace SimpleAPI.Tests;



