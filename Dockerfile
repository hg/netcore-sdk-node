FROM mcr.microsoft.com/dotnet/sdk:5.0

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash \
    && apt-get install -y nodejs libgdiplus pigz \
    && rm -rf /var/lib/apt/lists/* \
    && npm i -g yarn
