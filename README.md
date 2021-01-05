# PersonalJenkins

## Build
```
docker build --tag commnerd/jenkins .
```

## Run
```
docker run -d --rm --name PersonalJenkins -v ${PWD}/data:/var/jenkins_home -p 8080:8080 commnerd/jenkins
```
