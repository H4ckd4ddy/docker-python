# docker-python

Simple Docker image to host python3 service, with dependencies installation

### With a Git project
```
my_project:
    image: hackdaddy/python
    restart: always
    environment:
      - GIT_REPO=https://github.com/my_name/my_repo.git
      - APP_ENTRYPOINT=start_my_app.py
```

### With a local project
```
my_project:
    image: hackdaddy/python
    restart: always
    volumes:
      - /path/to/my/app:/app
    environment:
      - APP_ENTRYPOINT=start_my_app.py
```