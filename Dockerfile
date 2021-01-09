FROM mcr.microsoft.com/dotnet/sdk:5.0

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash \
    &&  mkdir -p /usr/share/man/man1 \
    && apt-get install -y nodejs libgdiplus pigz openjdk-11-jre-headless ca-certificates \
    && rm -rf /var/lib/apt/lists/* \
    && npm i -g yarn
