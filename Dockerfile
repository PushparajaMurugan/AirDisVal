FROM python:3.8

WORKDIR /app

ENV DATA_DIR="/app/data"
RUN mkdir -p $DATA_DIR

# Install git
RUN apt-get update && apt-get install -y git

# Clone the repository
RUN git clone {repository_url}

# Set the working directory to the cloned repository
WORKDIR /app/{repository_url.split("/")[-1]}

# Your additional commands if needed

RUN pip install numpy
CMD ["python", "main.py"]
