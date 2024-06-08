# Architecture

- Local filesystem as the source of truth.
- Sync with Syncthing
- **Let Syncthing deal with conflicts**
- PWA for web and mobile access
- Files as Json. Cached in IndexedDb for offline read access


```mermaid
flowchart
	desktop -- Quick add, etc. --> helper
	desktop([Desktop]) --> cli(CLI)
	cli --> localfiles[("`**Local FileSystem**`")]
	localfiles --> Syncthing
	Syncthing --> otherfiles([Other Desktops])
	Syncthing --> serverfiles[Server FileSystem]
	serverfiles --> server(Server)

	helper(Desktop Helper App) --> localfiles

	web([Web]) --> spa(SPA)
	mobile([Mobile]) -- PWA --> spa
	spa --> worker(Service Worker)
	worker --> online{Online?}
	online -- yes --> server
	online -- no --> action{Action?}
	action -- add --> queue(Mobile Queue)
	action -- edit --> stop[/Not Allowed\]
	action -- view --> idb[(IndexedDb)]
	worker -- cache --> idb
	queue -- sync via worker --> server
	queue --> idb
	
	style desktop fill:#ddd
	style otherfiles fill:#ddd
	style web fill:#ddd
	style mobile fill:#ddd

	style cli fill:#d2f8d2
	style helper fill:#d2f8d2
	style server fill:#d2f8d2
	style spa fill:#d2f8d2
	style worker fill:#d2f8d2
	style idb fill:#d2f8d2
	style queue fill:#d2f8d2

	style localfiles fill:#add8e6	
	style stop fill:#ffc0cb
```

## Order of Operations

TODO