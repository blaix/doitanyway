# TODO

* [X] gren-tui
* [X] move TODOs from rust project
* [X] gren-tui bugs:
    * [X] Whole screen gets cleared when view is rendered
    * [X] init command never gets run
* [X] Rename to doitanyway / dia (search project for "taskfile")
* [ ] GPL?
* [ ] After node and core package releases in June:
  * [ ] Release gren-tui update
  * [ ] Update gren.json to point to published packages
* [ ] Recreate (and expand on) functionality of rust version:
  * [ ] frontmatter that works better in obsidian. Probably yaml :(
  * [ ] `dia` lists files
  * [ ] `dia` lists files in order of priority
  * [ ] fuzzy find file in list
  * [ ] choices after selecting file:
    * [ ] edit
    * [ ] complete
    * [ ] delete
  * [ ] `dia daily`
  * [ ] `dia tomorrow`
  * [ ] `dia weekly`
  * [ ] `dia monthly`
  * [ ] `dia yearly`
  * [ ] `dia oldest`
  * [ ] `dia random`
  * [ ] ...see http://hentzia.com/blog/gtd-with-evernote-tldr.html
  * [ ] ...and http://hentzia.com/blog/gtd-with-evernote.html
* [ ] Documentation:
  * [ ] DIA_HOME
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

* [ ] Track history of file changes?
