# Instaclaim dashboard

Installation of dependencies is standard:

```
npm i
```

And both the client and server code can be compiled, respectively, with

```
npm run watch:c
npm run watch:s
```

But before webpack will compile (and before the server will run), a number of environment variables have to be set.

## Setting environment variables

The following environment variables are required for the application to work in production:

* `PORT` *the local port used to run the server*
* `PGUSER` *the postgres user*
* `PGHOST` *the postgres host*
* `PGPASSWORD` *postgres password*
* `PGDATABASE` *postgres database name*
* `PGPORT` *postgres port*
* `URL_HOST` *the dashboard host*
* `URL_PORT` *the web-facing dashboard port*
* `URL_SIG_HOST` *the signaling server host*
* `URL_SIG_PORT` *the signaling server port*
* `URL_TARGET_HOST` *the client host*
* `URL_TARGET_PORT` *the client port*
* `URL_IMG_UPLOADS` *the directory for image uploads*
* `URL_VID_UPLOADS` *the directory for video uploads*
* `SECRET_KEY` *secret key used for authentication*

Additionally, to use HTTPS during development, a certificate must be installed and pointed to by

* `NODE_EXTRA_CA_CERTS`

---
A full explanation of these environment variables coming soon

