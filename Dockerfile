# Please read https://github.com/holtwick/briefing/blob/master/docs/docker.md for proper use of Docker

FROM node:16-alpine
COPY . /app
WORKDIR /app
RUN cd /app; npm install --production
CMD ["sh", "-c", "BRIEFING_STUN_URL=stun:turn.tenacity.it:3478 BRIEFING_TURN_URL=turns:turn.tenacity.it:5349 BRIEFING_TURN_USER=briefing BRIEFING_TURN_PASSWORD=05ad164f898435377e9b00605ab48c4b072ba6acee37f02e76b69ce2baac3182 node dist/main.cjs"]
EXPOSE 8080
