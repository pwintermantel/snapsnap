# Example Project

This is a small `Silex` project to demonstrate a `Docker` based development setup during a workshop at KF Interactive.

The application is has multiple Containers that are orchestrated by _Docker Compose_. Since some commands must be run in the application environment, there are wrappers that run commands via `docker run` inside the application containers, see `bin/composer`. Other development tools are also executed within their own container environments, which saves the developer the hassle to handle all the ruby, python, node.js versions and dependencies, see `bin/cap` and `bin/spinx-make`.

# Directory structure

```
├── Dockerfile
├── README.md
├── bin
│   ├── cap
│   ├── composer
│   ├── publish
│   └── sphinx-make
├── composer.json
├── composer.lock
├── config
├── docker-compose.yml
├── src
│   └── index.php
└── vendor
```
 

 * Top Level with `REAME`, `Dockerfile` and configs for _docker-compose_ and _composer_
 * `bin` with the convenience wrappers and other scripts
 * `config` holds configuration for container compontents, wich will be added to the image during builds but also for project specific configuration
 * `src` is for the main application source code. Depending on the used technology there might be code in other directories as well.
 * `vendor` is reserved for all third pary dependencies. composer will install all packages there.


# Deployment

As minimalistic deployment scenario you can run `build/publish`, take the docker-compose-production.yml and run it with `docker-compose up -f docker-compose-production.yml` on any `Docker` / `Docker Composer` enabled machine. Of course, by itself, it doesn't cover cover bootstrapping for a database or other components, but you will have the base a persistent data container.
