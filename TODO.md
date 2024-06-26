# TODO

## Immediate MVP: Core functionality + web/online-only

* [X] prettynice scaffolding
* [X] prisma
* [X] fly deployment
* [X] basic auth headers
* [X] fly deploy failing. Moved to render
* [ ] == back to text-based again? use Obsidian sync for mobile ==
* [ ] move basic auth to a package (will need it on pencils) see [http-basic-auth](https://github.com/blaix/http-basic-auth)
* [ ] ws4sqlite: See https://github.com/proofrock/ws4sqlite/discussions/47
* [ ] Move to hetzner: use blog posts as guide (see "Move to hetzner" section of pencils TODO)
* [ ] Task model: see `tasker/PLAN.md`
* [ ] Add task form
* [ ] GTD view: see `tasker/PLAN.md`
* [ ] Edit task
* [ ] Delete task
* [ ] Complete task
* [ ] Repeating tasks: see `tasker/PLAN.md`
* [ ] Start dogfooding
* [ ] Restore things I miss about taskfiles:
  * [ ] vim editing of tasks around people, meetings, etc.
  * [ ] filesystem search and navigation with fzf, rg, etc.

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
* [ ] "Note tasks"
  * [ ] Work like taskfiles, but with gren node
  * [ ] Gren FileSystem.watch to keep task database updated
* [ ] Template tasks: specify default options and content for new tags in the same project

## Offline and Syncing

* [ ] IndexedDB API for Gren: https://github.com/blaix/gren-idb
* [ ] Progressive web app: native app dev is too much of a moving target
* [ ] See "database and syncing" section of README
* [ ] See https://github.com/pazguille/offline-first

## Other

* [ ] website: doitanyway.horse (DIA: Accronym and "day" in spanish :)
* [ ] Edit in full screen codemirror with vim plugin
