# TODO

## Immediate MVP: Core functionality + web/online-only

* [X] prettynice scaffolding
* [X] prisma
* [X] fly deployment
* [X] basic auth headers
* [X] fly deploy failing. Moved to render
* [ ] ws4sqlite
  * [ ] or turso + libsql? (sql-over-http with no need to manage a db server)
  * [ ] See https://github.com/proofrock/ws4sqlite/discussions/47
* [ ] move basic auth to a package? see zulip and discord discussions on base64
* [ ] Task model: see `tasker/PLAN.md`
* [ ] Add task form
* [ ] GTD view: see `tasker/PLAN.md`
* [ ] Edit task
* [ ] Delete task
* [ ] Complete task
* [ ] Repeating tasks: see `tasker/PLAN.md`
* [ ] Start dogfooding

## Post-MVP: Full functionality + offline/pwa

* [ ] DB backups (and versioning?):
  * [ ] Litestream?
  * [ ] Volume copy/fork? https://fly.io/docs/volumes/volume-manage
* [ ] See `tasker/PLAN.md#Grouping`:
  * [ ] Projects
  * [ ] Folders
  * [ ] Tags
* [ ] Offline-first PWA (see below)
* [ ] Announce

## Offline and Syncing

* [ ] IndexedDB API for Gren: https://github.com/blaix/gren-idb
* [ ] Progressive web app: native app dev is too much of a moving target
* [ ] See "database and syncing" section of README
* [ ] See https://github.com/pazguille/offline-first

## Other

* [ ] website: doitanyway.horse (DIA: Accronym and "day" in spanish :)
* [ ] Edit in full screen codemirror with vim plugin
