# spaCy demo

Jupyter-based demo of the spaCy NLP library.

## Running the demo

```
# NOTE: this incantation assumes you're running the command 
# from the project root. Changes to files under notebooks 
# will be written from client to host.

docker run -it \
  -p 7777:9999 \
  -v "${PWD}/notebooks:/app/notebooks" \
  uazhlt/spacy-demo:latest
```

Open [localhost:7777](http://localhost:7777) and navigate to `notebooks` to view the notebooks.

## Export slides

Generate html slides by launching a short-lived instance (container) of the image:

```
docker run -v "${PWD}/notebooks:/app/export" -it uazhlt/spacy-demo:latest jupyter nbconvert /app/export/spacy-demo.ipynb --to slides \
 --SlidesExporter.reveal_theme=serif \
 --SlidesExporter.reveal_scroll=True \
 --SlidesExporter.reveal_transition=none
```

## Convert the `.ipynb` notebook file to static HTML

```
docker run -v "${PWD}/notebooks:/app/export" -it uazhlt/spacy-demo:latest jupyter nbconvert /app/export/spacy-demo.ipynb --to html
```

# Misc

## Unfamiliar with `git`?

You may find these links useful:

- https://parsertongue.org/lessons/git-basics
- https://parsertongue.org/lessons/github-intro

## Unfamiliar with `docker`?

You may find these links useful:

- https://parsertongue.org/lessons/docker-intro
- https://parsertongue.org/lessons/containers-intro
