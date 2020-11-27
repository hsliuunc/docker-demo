# demo
docker demo

Build

```
docker build -f Dockerfile -t docker-demo  .
```

Run
```
docker run -ti docker-demo /bin/bash -c "source activate hero && cd src/app && python main.py"
```

To save output in local path, run
```
docker run  -v /abs/local/data/path/:/root/data -ti docker-demo /bin/bash -c "source activate hero && cd src && python main.py"
```