ARG BASE=nvidia/cuda:11.8.0-base-ubuntu22.04
FROM ${BASE}

# Install OS dependencies:
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y --no-install-recommends \
    gcc g++ \
    make \
    python3 python3-dev python3-pip python3-venv python3-wheel python3-setuptools \
    espeak-ng libsndfile1-dev \
    && rm -rf /var/lib/apt/lists/*ooo

RUN python3 -m pip install --upgrade pip setuptools wheel

# Install Major Python Dependencies:
RUN pip install TTS
RUN pip3 install torch torchaudio --extra-index-url https://download.pytorch.org/whl/cu118


WORKDIR /app

COPY src/ .


