FROM pytorch/pytorch
MAINTAINER D-Jy <duan@d-jy.net>

EXPOSE 6969

RUN echo 'APT::Get::Clean=always;' >> /etc/apt/apt.conf.d/99AutomaticClean

RUN apt-get update -qqy \
    && DEBIAN_FRONTEND=noninteractive apt-get -qyy install \
	--no-install-recommends \
	git \
	pkg-config \
	gcc \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY . /content/naifu
RUN /bin/chmod +x /content/naifu/run.sh
RUN /bin/chmod +x /content/naifu/setup.sh

# Setup Naifu
WORKDIR /content/naifu
RUN /content/naifu/setup.sh

# Define mountable directories.
#VOLUME []

# Start naifu
WORKDIR /content/naifu
CMD ["/content/naifu/run.sh"]

