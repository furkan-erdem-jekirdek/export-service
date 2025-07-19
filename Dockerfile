# Stage 1: Use the official Microsoft ASP.NET Core runtime image for .NET 9.
# The "aspnet" image is optimized and smaller because it only contains the runtime, not the SDK.
FROM mcr.microsoft.com/dotnet/aspnet:9.0

# Set the working directory inside the container to /app
WORKDIR /app

# Copy all the files from your local project folder into the container's /app directory
COPY . .

# Modern .NET images default to listening on port 8080 for security.
# This line informs Docker that the container listens on this port.
EXPOSE 8080

# --- CRITICAL STEP ---
# This is the command that starts your application.
# You MUST replace "YourWebsite.dll" with the actual name of your main .dll file.
ENTRYPOINT ["dotnet", "serverjs.balkan.app.dll"]