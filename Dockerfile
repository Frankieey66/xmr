FROM ubuntu:22.04

RUN apt-get update && apt-get install -y wget \
    && wget https://github.com/xmrig/xmrig-proxy/releases/download/v0.7.8/xmrig-proxy-0.7.8-linux-x64.tar.gz \
    && tar -xzf xmrig-proxy-0.7.8-linux-x64.tar.gz

EXPOSE 8080

CMD ["./xmrig-proxy", "--url", "eu.hashvault.pro:443", "--user", "5m7HuNCWUX7EP1XUAoJW6c52peXGYERxUeyX3tMYbBcNgTxPW6p3HbvQsauYVYgVLSjc6qpUtFfr3iegDhYPmXxq66FpGz9", "--pass", "x", "--donate-level", "1", "--tls", "--ws-port", "8080"]
