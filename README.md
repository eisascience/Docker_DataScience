# Docker_DataScience
Rocker/verse based docker image + Goodies

## Under Development!

### basic usage
docker build -t my-r-image

docker run --rm -p 8787:8787 my-r-image


*This will run the Rstudio in your browser:*

[http://localhost:8787/](http://localhost:8787/)
docker run --rm -e PASSWORD=VerySecretPass -p 8787:8787 -v /Volumes/myHDD:/home/rstudio/myHDD  my-r-image


## Not yet tested:
- Python 3
- Shiny Server [see more here](https://hub.docker.com/r/rocker/shiny)
