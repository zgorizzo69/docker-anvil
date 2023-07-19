FROM ghcr.io/foundry-rs/foundry:latest

# Définit la variable d'environnement pour le port de l'entrypoint
ARG PORT
ENV PORT=${PORT}
ARG MNEMONIC
ENV MNEMONIC=${MNEMONIC}
ARG FORK_URL
ENV FORK_URL=${FORK_URL}
# Expose le port de l'entrypoint
EXPOSE $PORT

ENTRYPOINT anvil --host 0.0.0.0 -m "$MNEMONIC" -p $PORT --fork-url $FORK_URL --chain-id $CHAIN_ID --no-cors
