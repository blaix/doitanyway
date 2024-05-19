* [ ] native app vs progressive web app?
  * [ ] I'm going to want nice mobile ux + quick-add desktop hotkey
  * [ ] Tauri vs Capacitor/Ionic?
    * [ ] Tauri probably more stable
    * [ ] Tauri has sqlite with migrations (see offline-first storage below)
    * [ ] Capacitor/Ionic very coupled to js frameworks
  * [ ] offline-first persistent storage. Look into:
    * [ ] IndexDB on web + sqlite on server with normal event-based syncing / replay
    * [ ] insert-only schema with each field taggged with a timestamp, sync is just merging lists of inserts
    * [ ] https://github.com/orbitinghail/sqlsync (requires react?)
    * [ ] pouchdb
* [ ] See PLAN and TODO in tasker repo (especially TODO#Syncing)
* [ ] website: doitanyway.horse:
  * [ ] commercial or opensource/docsite?
  * [ ] DIA: Accronym and "day" in spanish :)
* [ ] Edit in full screen codemirror with vim plugin
* [ ] It should basically work like OmniFocus, but with:
  * [ ] Must/Should/Want prioritization
  * [ ] Now flag
  * [ ] This morning / Today / This evening?
  * [ ] Pause that does not affect recurring dates
* [ ] decide on this vs taskfiles and update taskfiles repos (gh and codeberg) accordingly
