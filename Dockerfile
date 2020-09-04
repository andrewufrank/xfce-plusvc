# buildx with 
#docker buildx build -t andrewufrank/xfce-plusvisualcode:v1 --platform linux/arm/v7,linux/arm64,linux/amd64  --push .

# or docker build -t andrewufrank/xfce-plusvisualcode-amd:v1 .
# add visual code to xfce 

 

FROM andrewufrank/xfce-pluseditors:v1.1


# RUN  dpkg -i code_1.48.2-1598353430_amd64.deb; apt-get install -y -f 
# RUN apt install /home/frank/Workspace8/dockerfiles/xfce-plusvisucalcode/code_1.48.2-1598353430_amd64.deb

RUN 	apt-get update &&  \ 
        env DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
		 apt-transport-https \
		 wget

RUN wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
RUN sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
RUN sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'



RUN 	apt-get update &&  \ 
        env DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
		 code 


CMD ["startxfce4"]
