## My base image
- [python3.8](https://hub.docker.com/_/python)
- [poetry](https://python-poetry.org/)
### [Docker Hub](https://hub.docker.com/repository/docker/gaivoronsky/base-docker)
### [GitHub](https://github.com/kompotiks/base-docker)
## Use
- terminal
```bash
docker run -it gaivoronsky/base-docker:latest
```
- Create Dockerfile

```dockerfile
FROM gaivoronsky/base-docker:latest
...
```