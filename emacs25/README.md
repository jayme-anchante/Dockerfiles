Building the image:

```
docker build --file Dockerfile --tag emacs25 .
```

Running the image:

```
docker run --rm -it -v $PWD:~/ emacs25
```
