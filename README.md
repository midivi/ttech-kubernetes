# ttech-kubernetes

# Build & push dockerimage
`docker build -t ttech-kubernetes app/.`
`docker tag ttech-kubernetes:latest 946041274772.dkr.ecr.eu-west-1.amazonaws.com/ttech-kubernetes:latest`
`docker push 946041274772.dkr.ecr.eu-west-1.amazonaws.com/ttech-kubernetes:latest`


`docker build -t liokqazq/ttech:v1 app/.`
`docker push liokqazq/ttech:v1`
