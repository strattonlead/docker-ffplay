FROM debian
RUN apt-get update
RUN apt-get install -y bash \
    ssh \
    wget \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    hicolor-icon-theme \
    libcanberra-gtk* \
    libgl1-mesa-dri \
    libgl1-mesa-glx \
    libpulse0 \
    libv4l-0 \
    xvfb \
    fonts-symbola \
	ffmpeg \
	libgl1-mesa-dri 
	
ENTRYPOINT [ "ffplay" ]
CMD [ "-loop", "0", "-i", "/var/content/video.mp4"]