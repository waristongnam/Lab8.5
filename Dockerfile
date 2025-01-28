FROM jenkins/jenkins:lts

USER root

RUN apt-get update && \
    apt-get install -y \
    python3 \
    python3-pip \
    python3-full \
    wget \
    unzip \
    gnupg2 \
    curl

RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && \
    echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list && \
    apt-get update && \
    apt-get install -y google-chrome-stable

RUN wget -q "https://edgedl.me.gvt1.com/edgedl/chrome/chrome-for-testing/132.0.6834.110/linux64/chromedriver-linux64.zip" && \
    unzip chromedriver-linux64.zip && \
    mv chromedriver-linux64/chromedriver /usr/local/bin/ && \
    chmod +x /usr/local/bin/chromedriver

RUN pip3 install --no-cache-dir --break-system-packages robotframework robotframework-seleniumlibrary

ENV CHROME_ARGS="--no-sandbox --headless --disable-gpu --disable-dev-shm-usage"

USER jenkins