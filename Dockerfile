FROM mcr.microsoft.com/dotnet/core/sdk:3.1

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash \
    && apt-get install -y nodejs \
    && rm -rf /var/lib/apt/lists/* \
    && npm i -g yarn
