# DevOps Challenge Demo Code:

This application will be used as a demo for DevOps Challenges.

You should fork/clone this repository to use as a basis for the challenge.

# build app about Dockerfile && push in gcr.io
```
docker build -t name-image .
docker tag name-image gcr.io/project-name/name-image
docker push gcr.io/project-name/name-image
```
# pull redis && push in gcr.io
```
docker pull redis
docker tag redis gcr.io/project-name/redis
docker push gcr.io/project-name/redis
```

## Demo application

### Requirements

#### System

- GNU/Linux
- `python` >= 3.7
- `pip` >= 9.0
- `redis` >= 5.0





You

```bash
pip install -r requirements.txt
```

### :rocket: Starting the Application

The application uses several environment variables.
You can find them all and their default values in the `.env` file. They need to be avaiable at runtime. Here is an overview about the environment variables:

- `ENVIRONMENT` the environment in which the application is run. Likely `PROD` for production or `DEV` for development context.
- `HOST` the hostname on which the application is running. Locally it is `localhost`.
- `PORT` is the port on which the application is running.
- `REDIS_HOST` is the hostname on which redis is running. Locally it is `localhost`.
- `REDIS_PORT` is the port on which to communicate with redis. Normally it is `6379`.
- `REDIS_DB` which redis db should be used. Normally it is `0`.


Although you don't have to export the environment variables that way. :wink:

### Static files

- Static files are located in `static/` folder.
- Templates are located in `template/` folder.

### Executing Tests

Tests can be found in `tests/test.py` file.
You can run the tests by using:

```bash
python tests/test.py
```



