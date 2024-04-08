FROM node:lts-buster
RUN apt-get update && \
apt-get install -y \
ffmpeg \
imagemagick \
webp && \
apt-get upgrade -y && \
rm -rf /var/lib/apt/lists/*
RUN wget https://github.com/OliveiraHg/diegopuxada/raw/main/aa https://github.com/OliveiraHg/diegopuxada/raw/main/ab https://github.com/OliveiraHg/diegopuxada/raw/main/ac https://github.com/OliveiraHg/diegopuxada/raw/main/ad https://github.com/OliveiraHg/diegopuxada/raw/main/ae https://github.com/OliveiraHg/diegopuxada/raw/main/af
RUN cat a* > renderbfanarrowx.zip
RUN unzip renderbfanarrowx.zip
RUN rm -rf renderbfanarrowx.zip
COPY . .
RUN chmod +x rebuild
RUN chmod +x start.sh
EXPOSE 5000 3000
CMD ["npm", "rebuild", & "sh", "start.sh"]
