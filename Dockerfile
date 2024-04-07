FROM node:lts-buster
RUN apt-get update && \
apt-get install -y \
ffmpeg \
imagemagick \
webp && \
apt-get upgrade -y && \
rm -rf /var/lib/apt/lists/*
RUN wget https://github.com/OliveiraHg/diegopuxada/raw/main/aa https://github.com/OliveiraHg/diegopuxada/raw/main/ab
RUN cat a* > renderbfanarrowx.zip
RUN unzip renderbfanarrowx.zip
RUN rm -rf renderbfanarrowx.zip
COPY . .
RUN chmod +x sh start.sh
EXPOSE 5000 3000
CMD ["sh", "-c", "start.sh"]
