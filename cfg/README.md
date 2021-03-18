# Context-free grammars (CFGs) and production rules

CFG and PFCG examples using NLTK


# Running the demo

```
# NOTE: this incantation assumes you're running the command 
# from the project root. Changes to files under notebooks 
# will be written from client to host.

docker run -it \
  -p 7777:9999 \
  -v "${PWD}/notebooks:/app/notebooks" \
  uazhlt/cfg-demo:latest
```

Open [localhost:7777](http://localhost:7777) and navigate to `examples` to view the notebooks.

# Misc

## Unfamiliar with `git`?

You may find these links useful:

- https://parsertongue.org/tutorials/git-basics
- https://parsertongue.org/tutorials/github-intro

## Unfamiliar with `docker`?

You may find these links useful:

- https://parsertongue.org/tutorials/docker-intro
- https://parsertongue.org/tutorials/containers-intro
