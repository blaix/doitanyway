# Architecture Idea based on Taskfiles

I find myself missing the way taskfiles worked.
Like the ability to work and take notes in a normal file with vimwiki and give that prioritization and due dates,
vs working in obsidian and linking to it from OFO, two systems I don't fully trust and flake out on me regularly.
Also the ability to be more adhoc about tasks within a file vs nested tasks in OFO, especially with the daily file.

cli should be named `dia` (day in spanish, plus nice do it anyway reminder)

* Tasks are files
* Projects are folders
* Frontmatter for tags, dates, and prioritization (see PLAN.md in my other GTD project attempts).
* `dia` complains if frontmatter looks wrong
* `__` prefixed-dirs and files are ignored:
  * Double prefix means I can keep using single prefix for bumping things higher in file listing (helpful on mobile)
  * `__Done` folders for completed tasks.
* Sync via git: Mobile and offline access for free via Working Copy app!

## TODO

* [o] Change TASKFILES_HOME to $HOME/dia
* [ ] Rename github taskfiles repo (the gren rewrite) to dia
* [ ] Desktop shortcut to add tasks (files) to inbox or Now, with fields for tags, dates, and prioritization
* [ ] Default `dia` command opens view with tasks grouped and prioritized according to my OFO sidebar/contexts
* [ ] nvim plugins
