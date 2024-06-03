# Architecture Idea based on Taskfiles

I miss the ability to work and take notes in a normal file with vimwiki and give that prioritization and due dates,
vs working in obsidian and linking to it from OFO, two systems I don't fully trust and flake out on me regularly.

cli should be named `dia` (day in spanish, plus nice do it anyway reminder)

* Tasks are files
* Projects are folders
* Frontmatter for tags, dates, and prioritization (see PLAN.md in my other GTD project attempts).
* `dia` complains if frontmatter looks wrong
* `_` prefixed-dirs and files are ignored. `__Done` folders for completed tasks.
* Normal file sync (syncting, dropbox, git....) for sync. See "Syncing and Mobile" section below
* Desktop shortcut to add tasks (files) to inbox or Now, with fields for tags, dates, and prioritization
* Default `dia` command opens view with tasks grouped and prioritized according to my OFO sidebar/contexts
* nvim plugins

## Syncing and Mobile

* Git for sync is very appealing. I can very explicitly deal with conflicts.
* `dia` should have nag if there are local or remote differences. (unless it's not a git repo?)
* remote sqlite db set up for mobile convenience?
  * gren process keeps it updated using FileSystem.watch
  * md5 hash of task file contents + project/filename as id
  * insert where doesn't exist in db, delete where doesn't exist in filesystem
* ws4sqlite serves db + static gren webapp:
  * read-only view of all tasks
  * link to github to edit task! (unless it's not a git repo?)
  * quick-add tasks to inbox or now:
    * adds to a mobile queue in the db
    * `dia` pulls this on startup, creates files, and removes the entry
    * first come first serve. rely on normal file syncing
