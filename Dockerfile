# Etapa 1: Imagem base leve
FROM python:3.10-slim

# Etapa 2: Instalar o AWS CLI
RUN pip install --no-cache-dir awscli

# Etapa 3: Criar diretório de trabalho
WORKDIR /app

# Etapa 4: Copiar os arquivos do site
COPY . .

# Etapa 5: Definir variáveis de ambiente padrão
ENV AWS_DEFAULT_REGION=us-east-1
ENV S3_BUCKET=projeto-devops-pucrs-2025

# Etapa 6: Comando de execução
# Envia todos os arquivos do diretório atual para o bucket S3
CMD aws s3 sync . s3://$S3_BUCKET/ \
    --exclude ".git/*" \
    --exclude ".github/*" \
    --exclude "Dockerfile" \
    --exclude "docker-compose.yml" \
    --exclude "s3-cloudform.yml" \
    --delete --exact-timestamps
