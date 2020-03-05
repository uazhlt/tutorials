# `sklearn` demo

Jupyter-based demo of `sklearn` NLP library.

## Building the docker image

```
docker build -f Dockerfile -t uazhlt/sklearn-demo .
```

## Running the container

```
docker run -p "7777:9999" -it uazhlt/sklearn-demo:latest
```

Open [localhost:7777](http://localhost:7777) and navigate to [`notebooks`](http://localhost:7777/tree/notebooks) to view the notebooks.

# Misc

## Removing old docker containers, images, etc.

If you want to save some space on your machine by removing images and containers you're no longer using, [see the instructions here](https://docs.docker.com/config/pruning/).  As always, use caution when deleting things.
