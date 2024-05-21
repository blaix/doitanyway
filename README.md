# Do it anyway

I decided to make my own todo app because I'm very cool and strong and my needs are special and unique.

It's (going to be) a progressive web app built with [prettynice](https://github.com/blaix/prettynice).

## Local development

Create a `.env` with this in it:

```
DATABASE_URL="file:./todo.db"
```

Then install dependencies and run the migrations:

```
npm install
npx prisma migrate deploy
```

Then you can start the dev server with:

```
npm run dev
```

## Database schema and syncing

I need the app to work across multiple devices and offline, and I do not want to depend on a third-party for source of truth.

To accomidate this, I'm going to save a timestamp alongside each field.
When syncing, value of most recent update wins.
Maybe with some special logic for certain field (e.g. a string merge with diff syntax for conflicts for the note field).

Should look something like this:

```
todo
----
id : String (UUID)
title : String
title_updated : Time
note : String
note_updated : Time
due : datetime
due_updated : Time
etc...
```

_Note: Because I need something usable quickly, I will make it work on a single server without the `_updated` fields for now, and add syncing later._

_Also note: datetimes will be stored as posix ints since datetimes are not supported with [sqlite strict tables](https://www.sqlite.org/stricttables.html)._

**Repeating tasks**: Each iteration creates a new task with an of `[original task id]-[n]` where `n` is one more than the previous iteration.
This will allow history tracking and prevent duplicate tasks if multiple devices iterate independently.

## Changing database schema

Update `prisma/schema.prisma` and run `npx prisma migrate dev` to generate a new migration.

## Deployment

I recommend [Render](https://render.com/).
Dirt simple, has everything you'll need, and never had a problem with them.
Instructions should be similar for other hosts though.

* Deploy as a node service.
* Build command: `npm install && npm run build`
* Start command: `npm start`

Under advanced options:

* Set up a persistent disk. E.g. `/var/data`
* Add `DATABASE_URL` environment variable pointing to db on your disk, e.g. `file:/var/data/todo.db`
* Add `AUTH_TOKEN` environment variable as well. See below.

Production app is protected with HTTP Basic auth.
It will look for a base64-encoded "username:password" string in the `AUTH_TOKEN` environment variable.
You can generate a header at https://www.debugbear.com/basic-auth-header-generator and grab the encoded part.
For example, if your generated auth header is `Authorization: Basic abc123==` then save `abc123==` as your `AUTH_TOKEN` environment variable.

If you're on render, pushes to `main` will be deployed automatically, unless you've explicitly configured it differently.

## License

Copyright (C) 2024-present Justin Blake

This program is free software: you can redistribute it and/or modify it under the terms of the GNU Affero General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License along with this program. If not, see https://www.gnu.org/licenses/.
