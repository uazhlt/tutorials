# spaCy demo

Jupyter-based demo of SpaCy NLP library.

## Building the docker image

```
docker build -f Dockerfile -t uazhlt/spacy-demo .
```

## Running the demo notebook

### Option 1
```
./launch.sh
```

### Option 2
```
# NOTE: this incantation assumes you're running the command 
# from the project root. Changes to files under notebooks 
# will be written from client to host.

docker run --rm -it -d \
  -p 7777:9999 \
  -v "${PWD}/notebooks:/app/notebooks" \
  uazhlt/spacy-demo:latest sh scripts/launch-notebook.sh
```

Open [localhost:7777](http://localhost:7777) and navigate to `notebooks` to view the notebooks.

## Export slides

Generate html slides by launching a short-lived instance (container) of the image:

```
docker run -v "${PWD}/notebooks:/app/export" -it uazhlt/spacy-demo:latest jupyter nbconvert /app/export/spacy-demo.ipynb --to slides \
 --SlidesExporter.reveal_theme=serif \
 --SlidesExporter.reveal_scroll=True \
 --SlidesExporter.reveal_transition=none

mv notebooks/spacy-demo.slides.html examples/
```

## Convert the `.ipynb` notebook file to static HTML

```
docker run -v "${PWD}/notebooks:/app/export" -it uazhlt/spacy-demo:latest jupyter nbconvert /app/export/spacy-demo.ipynb --to

mv notebooks/spacy-demo.html examples/
```

# Misc

## Unfamiliar with `git`?

You may find this tutorial useful:

- https://www.atlassian.com/git/tutorials/saving-changes

## Removing old docker containers, images, etc.

If you want to save some space on your machine by removing images and containers you're no longer using, [see the instructions here](https://docs.docker.com/config/pruning/).  As always, use caution when deleting things.
