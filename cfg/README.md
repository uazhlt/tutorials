# Context-free grammars (CFGs) and production rules

CFG and PFCG examples using NLTK

## Building the docker image

```
docker build -f Dockerfile -t uazhlt/cfg-demo .
```

## Running the example notebook

### Option 1
```
./launch.sh
```

### Option 2
```
# NOTE: this incantation assumes you're running the command 
# from the project root. Changes to files under notebooks 
# will be written from client to host.

docker run --rm -it \
  -p 7777:9999 \
  -v "${PWD}/notebooks:/app/examples" \
  uazhlt/cfg-demo:latest sh scripts/launch-notebook.sh
```

Open [localhost:7777](http://localhost:7777) and navigate to `examples` to view the notebooks.

# Misc

## Unfamiliar with `git`?

You may find this tutorial useful:

- https://www.atlassian.com/git/tutorials/saving-changes

## Removing old docker containers, images, etc.

If you want to save some space on your machine by removing images and containers you're no longer using, [see the instructions here](https://docs.docker.com/config/pruning/).  As always, use caution when deleting things.
