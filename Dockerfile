FROM ghcr.io/foundry-rs/foundry:latest 

# Définit la variable d'environnement pour le port de l'entrypoint
ARG PORT 
ARG MNEMONIC  

# Expose le port de l'entrypoint
EXPOSE $PORT

ENTRYPOINT ["anvil", "--host", "0.0.0.0", "-m", "${MNEMONIC}", "--fork-url", "https://rpc.ankr.com/eth"]
