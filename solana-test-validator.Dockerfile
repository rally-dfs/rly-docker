FROM solanalabs/solana:stable


RUN apt-get update
RUN apt-get install -y ca-certificates

WORKDIR /app

COPY solana-test-validator-entrypoint.sh .

RUN solana-keygen new

EXPOSE 8899
EXPOSE 8900

ENTRYPOINT ["./solana-test-validator-entrypoint.sh"]