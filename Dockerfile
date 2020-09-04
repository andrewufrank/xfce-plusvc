# buildx with 
#docker buildx build -t andrewufrank/xfce-plusvisualcode:v1 --platform linux/arm/v7,linux/arm64,linux/amd64  --push .

# or docker build -t andrewufrank/xfce-plusvisualcode-amd:v1 .
# add visual code to xfce 

 

FROM andrewufrank/xfce-pluseditors:v1.1

RUN  dpkg -i code_1.48.2-1598353430_amd64.deb; apt-get install -y -f 

CMD ["startxfce4"]
