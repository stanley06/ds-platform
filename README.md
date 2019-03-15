# Data Science Platform

This is my own data science platform to learn and experiment with various staff.

## Tools installed
- ubuntu
- tensorflow
- numpy
- pandas
- sklearn
- matplotlit
- pyyaml
- jupyter

## How to run it
```
# build the image
docker build -t stanely0602/datascience:latest .

# run the image
docker run -it -name ds -p 6006:6006 -p 8888:8888  stanely0602/datascience:latest

# run the image with host directory mapped to the volume
docker run -it -name ds -p 6006:6006 -p 8888:8888 -v host_dir_to_nootbooks:/notebooks stanely0602/datascience:latest

# start jupyter notebook
/start_jupyter.sh
```

## Useful docker commands
```
# remove all the containers
docker rm $(docker ps -qa)

# remove all the images
docker rmi $(docker images -q)

# list all the data volumes
docker volume ls
docker volume rm VOL_ID

```
