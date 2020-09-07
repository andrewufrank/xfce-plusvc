# buildx with 
#docker buildx build -t andrewufrank/xfce-plusvc:deb10.1.x1.1.e1.vc1aarch --platform linux/arm64  --push .

# or docker build -t andrewufrank/xfce-plusvisualcode-amd:v1 .
# add visual studio code to xfce 

 

FROM andrewufrank/xfce-pluseditors:deb10.1.x1.1.e1


# RUN  dpkg -i code_1.48.2-1598353430_amd64.deb; apt-get install -y -f 
# RUN apt install /home/frank/Workspace8/dockerfiles/xfce-plusvisucalcode/code_1.48.2-1598353430_amd64.deb

RUN 	apt-get update &&  \ 
        env DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
		 apt-transport-https \
		 wget curl   ca-certificates
RUN  curl -s https://packagecloud.io/install/repositories/swift-arm/vscode/script.deb.sh | sudo bash
RUN apt-get install code-oss

# RUN wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
# RUN install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
# RUN curl -L https://packages.microsoft.com/keys/microsoft.asc |  apt-key add -

#RUN curl https://packages.microsoft.com/keys/microsoft.asc |  apt-key add -
# RUN  sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
# RUN   echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list



# RUN 	apt-get update   &&  \ 
#        apt-get install -y --no-install-recommends  code 


CMD ["startxfce4"]
