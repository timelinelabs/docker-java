# Docker - Java

A minimal ubuntu based docker container with [Oracle Java SE JRE](http://www.oracle.com/technetwork/java/javase/downloads) installed.

Version tags are based off the installed [Java](http://www.oracle.com/technetwork/java/javase/downloads) version.

## Usage

Edit the Dockerfile to use the version of Java you need. 

Build the container, and tag it with the Java version.

```
$ docker build -t='yourname/java:_version_'
```

Set up your Dockerfile to use this image

```
# in your Dockerfile
FROM yourname/java:_version_
...
```

Then build away!