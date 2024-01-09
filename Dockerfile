FROM python:3.8

WORKDIR /app

ENV DATA_DIR="/app/data"
RUN mkdir -p $DATA_DIR

# Install git
RUN apt-get update && apt-get install -y git

# Clone the repository
ARG REPOSITORY_URL
RUN git clone $REPOSITORY_URL

# Set the working directory to the cloned repository
WORKDIR /app/$(basename $REPOSITORY_URL .git)

# Your additional commands if needed

RUN pip install numpy
CMD ["python", "main.py"]
