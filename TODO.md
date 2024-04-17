# TODO

* [X] gren-tui
* [X] move TODOs from rust project
* [ ] gren-tui bugs?:
    * [ ] Whole screen gets cleared when view is rendered
    * [ ] View is rendered after the error message when TASKFILES_HOME is not set
* [ ] After node and core package releases in June:
  * [ ] Release gren-tui update
  * [ ] Update gren.json to point to published packages
* [o] Recreate functionality of rust version
* [ ] Compare speed to rust version
* [ ] ^ Decide on rust vs gren vs something else
* [ ] If NOT gren version, move TODOs below to whatever is the new version
* [ ] move TODOs from taskfiles tasks
* [ ] "new" template should probably have default frontmatter (much easier to remove than to add manually)
* [ ] web/phone access
* [ ] Add "on" subcommand that asks for date for appropriate template substitution of a future date that isn't daily/tomorrow/etc.
* [ ] Recursive template search?
* [ ] Change default to a new prompt for what to do with file:
      Open (current default behavior), Mark Done, Delete, Cancel.
* [ ] Release as an open source project?:
  * [ ] License?
  * [ ] Move to github?
  * [ ] Record demo with charm.sh's tape: https://github.com/charmbracelet/vhs
  * [ ] blog post (about the project and how I manage tasks)?
* [ ] Surface screenshots in the inbox
* [ ] Options for what to do with selected file (edit, move, delete, etc.). Use charm.sh's `gum` with `choose` or `filter`.
* [ ] Warn on unrecognized attributes and unparsable values (to guard against typos)?
* [ ] Integrate charm.sh's gum? https://github.com/charmbracelet/gum
* [ ]   quick add to inbox (or anywhere?)
* [ ] Move the "view" logic into taskfiles so the priorities box uses the values from the rust Task struct instead of what's parsed from bash.
* [ ] Keep getting better at rust:
  * [ ] Consider a hexagonal architecture, maybe with crux: https://github.com/redbadger/crux
  * [ ] try parallelizing with rayon
  * [ ] consider:
    * [ ] [clap](https://github.com/clap-rs/clap)
    * [ ] [ratatui](https://github.com/ratatui-org/ratatui)


## Future Ideas / Questions

* [ ] Mobile app? See attempts at gleam/lustre+ionic: https://github.com/blaix/tasker-lustre/blob/main/src/tasker.gleam
