# Please read https://github.com/holtwick/briefing/blob/master/docs/docker.md for proper use of Docker

FROM node:16-alpine
COPY . /app
WORKDIR /app
RUN cd /app; npm install --production

ENV BRIEFING_STUN_URL=stun:turn.tenacity.it:3478
ENV BRIEFING_TURN_URL=turn:turn.tenacity.it:3478
ENV BRIEFING_TURN_USER=briefing
ENV BRIEFING_TURN_PASSWORD=05ad164f898435377e9b00605ab48c4b072ba6acee37f02e76b69ce2baac3182

CMD ["node", "dist/main.cjs"]
EXPOSE 8080
