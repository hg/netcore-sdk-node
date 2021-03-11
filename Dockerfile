FROM mcr.microsoft.com/dotnet/sdk:5.0-focal

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash \
    && curl -sL https://sentry.io/get-cli/ | bash \
    && mkdir -p /usr/share/man/man1 \
    && apt-get install -y nodejs libgdiplus pigz openjdk-11-jre-headless ca-certificates \
    && rm -rf /var/lib/apt/lists/* \
    && npm i -g yarn
