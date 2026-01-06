FROM rust:1.75-slim-bookworm
RUN apt-get update && apt-get install -y \
    libwebkit2gtk-4.1-dev \
    build-essential \
    curl \
    wget \
    file \
    libssl-dev \
    libgtk-3-dev \
    libayatana-appindicator3-dev \
    librsvg2-dev \
    nodejs \
    npm
RUN cargo install tauri-cli
WORKDIR /app