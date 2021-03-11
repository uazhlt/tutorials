# `sklearn` demo

Jupyter-based demo of `sklearn` NLP library.

## Building the docker image

```
docker build -f Dockerfile -t uazhlt/sklearn-demo .
```

# Running the demo

```
# NOTE: this incantation assumes you're running the command 
# from the project root. Changes to files under notebooks 
# will be written from client to host.

docker run -it \
  -p 7777:9999 \
  -v "${PWD}/notebooks:/app/notebooks" \
  uazhlt/sklearn-demo:latest
```

Open [localhost:7777](http://localhost:7777) and navigate to [`notebooks`](http://localhost:7777/tree/notebooks) to view the notebooks.

# Misc

## Unfamiliar with `git`?

You may find these links useful:

- https://parsertongue.org/lessons/git-basics
- https://parsertongue.org/lessons/github-intro

## Unfamiliar with `docker`?

You may find these links useful:

- https://parsertongue.org/lessons/docker-intro
- https://parsertongue.org/lessons/containers-intro