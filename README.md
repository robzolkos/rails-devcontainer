# Ruby on Rails devcontainer based development

This devcontainer contains Ruby 3.2.2, Postgres and Redis. You can update the Dockerfile and docker-compose.yml to add any other dependencies you may need.

When you use devcontainers for your Rails projects, each project is self-contained and its dependencies don't interfere with any other projects. Also your developer machine stays clean.

Another benefit is that the configuration is checked into the source code so other developers can clone down the repo and get to work without any additional setup required.

Make sure you have the [Remote Development](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack) extension pack installed in VS Code.

### Existing Rails Application

1. Clone this repo
2. Copy the `.devcontainer` from this repo into the existing application
3. Modify the `.devcontainer/Dockerfile` with correct Ruby and Node versions you need (and any other dev dependencies)
4. Start vscode and it will prompt you to start the project in a dev container - yes!
5. Open the integrated terminal in vscode and type `ruby -v` and `rails -v` you are now in the devcontainer environment.

### Brand new Rails Application

1. Clone this repo
2. `cd` into it
3. Start vscode and it will prompt you to start the project in a dev container - yes!
4. Open the integrated terminal in vscode `gem install rails`
5. `rails new . -d postgresql -c tailwind -j esbuild` (or whatever)
6. `bin/dev` to start normal rails dev servers

#### Database config sample

- see the `database.yml.example` on how to set the `host` for the database. As the database is in docker you need to give the docker host name `db` or the ENV VAR `DB_HOST`
