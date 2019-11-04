# Context-free grammars (CFGs) and production rules



## Building the docker container

```
docker build -f Dockerfile -t uaz-hlt/nlp-demos-cfgs .
```

## Running the assignment notebook

```
# NOTE: this incantation assumes you're running the command 
# from the project root. Changes to files under notebooks 
# will be written from client to host.

docker run --rm -it \
  -p 7777:9999 \
  -v "${PWD}/notebooks:/app/examples" \
  uaz-hlt/nlp-demos-cfgs:latest sh scripts/launch-notebook.sh
```
Open [localhost:7777](http://localhost:7777) to and navigate to `examples` to view the notebooks.

# Misc

## Removing old docker containers, images, etc.

If you want to save some space on your machine by removing images and containers you're no longer using, [see the instructions here](https://docs.docker.com/config/pruning/).  As always, use caution when deleting things.
