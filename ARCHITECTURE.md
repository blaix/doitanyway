# Architecture

## File-based

- Local filesystem as the source of truth.
- Sync with Syncthing. **Let Syncthing deal with conflicts.**
- PWA for web and mobile access with IndexedDb caching for offline.
- Files represented over the wire and in IndexedDb as Json.

```mermaid
flowchart
	desktop -- Quick add, etc. --> helper
	desktop([Desktop]) --> cli(CLI)
	cli --> localfiles[("`**Local FileSystem**`")]
	localfiles <--> Syncthing
	Syncthing <--> otherfiles([Other Desktops])
	Syncthing <--> serverfiles[(Server FileSystem)]
	serverfiles <--> server(Server)

	helper(Desktop Helper) --> localfiles

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

## Simplified

```mermaid
flowchart

	%% normal workflow
	web([Web]) --> spa(SPA)
	mobile([Mobile]) -- PWA --> spa
	spa --> worker(Service Worker)
	worker --> idb[(IndexedDb)]

	%% sync
	worker --> 
	online -- yes --> 
		
	style web fill:#ddd
	style mobile fill:#ddd

	style spa fill:#d2f8d2
	style worker fill:#d2f8d2
	style idb fill:#d2f8d2
```