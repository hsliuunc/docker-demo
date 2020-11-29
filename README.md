# demo
docker demo

Build

```
docker build -f Dockerfile -t docker-demo  .
```

Run in interactive mode
```
docker run -ti docker-demo /bin/bash -c "source activate hero && cd src/app && python main.py"
```

To save outputs in local path, run
```
docker run  -ti -v $(pwd)/data:/root/data -v $(pwd)/src:/src test-mount:latest /bin/bash -c "source activate hero && cd src && python main.py"
```