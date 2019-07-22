# docker-mjml

A very simple docker image w/ mjml + a script for building emails.

## Configuration

Configurable via environment variables:

```
IN_EXT=mjml # extension of input files
OUT_EXT=html # extension of output files
```

## Using as part of a multi stage build

This is how I use it currently

```
FROM amurf/docker-mjml as emails
ADD your-emails/ .
ENV OUT_EXT=html
RUN /build-emails.sh

FROM node:current
COPY --from=emails /emails/ /wherever-you-want-the-emails/
```

## As part of a docker-compose stack

You can volume mount your emails and drive mjml directly in watch mode. 
