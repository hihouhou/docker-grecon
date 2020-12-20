#
# Grecon Dockerfile
#
# https://github.com/
#

# Pull base image.
FROM debian:latest

MAINTAINER hihouhou < hihouhou@hihouhou.com >

ENV GRECON_VERSION 0.00.0

# Update & install packages for installing rocketchat
RUN apt-get update && \
    apt-get install -y curl python3 python3-pip wget git

#Download latest version of grecon
RUN git clone https://github.com/adnane-X-tebbaa/GRecon.git && \
    cd GRecon && \
    python3 -m pip install -r requirements.txt

CMD ["python3", "Grecon.py"]
