Building the image:

```
docker build --file Dockerfile --tag mpsyt .
```

Running the images:

```
docker run -it --rm --device /dev/snd mpsyt
```
