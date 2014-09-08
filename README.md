# Docker - Java

A minimal ubuntu based docker container with [Oracle Java SE JRE](http://www.oracle.com/technetwork/java/javase/downloads/index-jsp-138363.html) installed.

Version tags are based off the installed java version.

## Usage

Set up your Dockerfile to use this image

```
# in your Dockerfile
FROM timelinelabs/java:_version_
...
```

Then build away!