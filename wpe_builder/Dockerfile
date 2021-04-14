FROM elixir:1.11.4

RUN apt-get update && \
	apt-get install -y cpio rsync bc

RUN mix local.hex --force && \
	mix archive.install --force hex nerves_bootstrap

ENV FORCE_UNSAFE_CONFIGURE="1"

