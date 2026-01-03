FROM elixir:1.19.4-otp-27-slim

RUN apt-get update && apt-get install -y \
    zsh \
    git \
    curl \
    sudo \
    ca-certificates \
    inotify-tools \
    && rm -rf /var/lib/apt/lists/*

ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID

RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME \
    && echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER $USERNAME

RUN mix local.hex --force && \
    mix local.rebar --force

RUN mix archive.install hex phx_new --force && \
    mix archive.install hex igniter_new --force
