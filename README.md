# microbial-networks

## Start an interactive shell 
To run an interactive shell you can use the following command. Your current directory (pwd) will be binded to /home/rstudio/data, so make sure you save your results there. 
```bash
docker run --rm -it -v "$(pwd)":/home/rstudio/data ghcr.io/au-envs-bioinformatics/microbial-networks:main bash
```
