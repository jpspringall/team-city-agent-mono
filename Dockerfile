FROM jetbrains/teamcity-agent
MAINTAINER James S

# Install Dependencies
USER root

#RUN apt-get update && apt-get upgrade -y
	
RUN apt-get install -y gnupg ca-certificates
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
RUN echo "deb https://download.mono-project.com/repo/ubuntu stable-focal main" | tee /etc/apt/sources.list.d/mono-official-stable.list
RUN apt-get update
RUN apt install -y mono-devel
