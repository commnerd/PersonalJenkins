# PersonalJenkins

## Build
```
docker build --tag commnerd/jenkins .
```

## Run
```
docker run -d --rm --name PersonalJenkins -v ./data:/var/jenkins_home commnerd/jenkins
```
