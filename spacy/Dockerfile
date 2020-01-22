FROM python:3.7

# Create app directory
WORKDIR /app

# Bundle app source
COPY . .

# Install python dependencies
RUN pip install -U pip
RUN pip install -r requirements.txt
RUN python -m spacy download en_core_web_md
