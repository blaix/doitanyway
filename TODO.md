* [ ] Progressive web app: native app dev is too much of a moving target
* [ ] offline-first persistent storage. Look into:
  * [ ] CouchDB has HTTP API, perfect for gren
  * [ ] ...but so does ws4sqlite which is maybe simpler
  * [ ] keep a table of sync events with field changed + timestamp, query/push changes since last sync when online
  * [ ] insert-only schema with each field taggged with a timestamp, sync is just merging lists of inserts
  * [ ] pouchdb?
  * [ ] IndexDB on web + sqlite on server with normal event-based syncing / replay
  * [ ] https://sql.js.org/ and https://github.com/WebReflection/sqlite-worker
  * [ ] https://rqlite.io/ ?
  * [ ] https://github.com/orbitinghail/sqlsync (requires react?)
* [ ] See PLAN and TODO in tasker repo (especially TODO#Syncing)
* [ ] website: doitanyway.horse (DIA: Accronym and "day" in spanish :)
* [ ] Edit in full screen codemirror with vim plugin
* [ ] It should basically work like OmniFocus, but with:
  * [ ] Must/Should/Want prioritization
  * [ ] Now flag
  * [ ] This morning / Today / This evening?
  * [ ] Pause that does not affect recurring dates
* [ ] decide on this vs taskfiles and update taskfiles repos (gh and codeberg) accordingly
