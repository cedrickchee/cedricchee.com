+++
title = "Creating a new monorepo with Turborepo"
description = "Learn all about your new monorepo, and how Turborepo makes handling your tasks easier."
date = 2023-01-03T00:00:00Z
#updated = 2022-11-10
#weight = 0
#slug = "future post"
#path = "/launch"
#draft = true

[taxonomies]
tags = ["frontend", "webdev"]

[extra]
ToC = true
+++

Docs: [Full tutorial](https://turbo.build/repo/docs/getting-started/create-new#full-tutorial)

## 1. Running `create-turbo`

This installs the [`create-turbo`](https://www.npmjs.com/package/create-turbo) CLI, and runs it.
You'll be asked several questions:

**Where would you like to create your turborepo?**

Choose anywhere you like. The default is `./my-turborepo`.

**Which package manager do you want to use?**

Turborepo doesn't handle installing packages, so you'll need to choose either:

- npm
- pnpm
- yarn

If you're not sure, we recommend choosing `pnpm`. If you don't have it installed,
cancel `create-turbo` (via `ctrl-C`) and take a look at the [installation instructions](https://pnpm.io/installation).

### Installation

Once you've picked a package manager, `create-turbo` will create a bunch of new files inside the folder name you picked.
It'll also install all the dependencies that come with the [`basic` example](https://github.com/vercel/turbo/tree/c3e7195b28dbadef1808a96fb41b5d0dacba23d4/examples/basic) by default.

```sh
$ npx create-turbo@latest
Need to install the following packages:
  create-turbo@1.6.3
Ok to proceed? (y) y

>>> TURBOREPO

>>> Welcome to Turborepo! Let's get you set up with a new codebase.

? Where would you like to create your turborepo? ./my-turborepo
? Which package manager do you want to use? pnpm

>>> Created a new turborepo with the following:

 - apps/web: Next.js with TypeScript
 - apps/docs: Next.js with TypeScript
 - packages/ui: Shared React component library
 - packages/eslint-config-custom: Shared configuration (ESLint)
 - packages/tsconfig: Shared TypeScript `tsconfig.json`

>>> Success! Created a new Turborepo at "my-turborepo".
Inside that directory, you can run several commands:

  pnpm run build
     Build all apps and packages

  pnpm run dev
     Develop all apps and packages

Turborepo will cache locally by default. For an additional
speed boost, enable Remote Caching with Vercel by
entering the following command:

  pnpm dlx turbo login

We suggest that you begin by typing:

  cd my-turborepo
  pnpm dlx turbo login
```

## 2. Exploring your new repo

You might have noticed something in the terminal. `create-turbo` gave you a description of all of the things it was adding.

```sh
>>> Created a new turborepo with the following:

 - apps/web: Next.js with TypeScript
 - apps/docs: Next.js with TypeScript
 - packages/ui: Shared React component library
 - packages/eslint-config-custom: Shared configuration (ESLint)
 - packages/tsconfig: Shared TypeScript `tsconfig.json`
```

Each of these is a _workspace_ - a folder containing a package.json.
Each workspace can declare its own dependencies, run its own scripts, and export code for other workspaces to use.

Open the root folder - `./my-turborepo` - in your favourite code editor.

### Understanding `packages/ui`

[... truncated ...]

This pattern of sharing code across applications is extremely common in monorepos - and means that multiple apps can share a single design system.

### Understanding imports and exports

[... truncated ...]

### Understanding tsconfig

[... truncated ...]

This pattern allows for a monorepo to share a single `tsconfig.json` across all its workspaces, reducing code duplication.

### Understanding `eslint-config-custom`

[... truncated ...]

ESLint resolves configuration files by looking for workspaces with the name `eslint-config-*`. This lets us write `extends: ['custom']` and have ESLint find our local workspace.

#### Summary

It's important to understand the dependencies between these workspaces. Let's map them out:

- `web` - depends on `ui`, `tsconfig` and `eslint-config-custom`
- `docs` - depends on `ui`, `tsconfig` and `eslint-config-custom`
- `ui` - depends on `tsconfig` and `eslint-config-custom`
- `tsconfig` - no dependencies
- `eslint-config-custom` - no dependencies

Note that **the Turborepo CLI is not responsible for managing these dependencies**. All of the things above are handled by the package manager you chose (`npm`, `pnpm` or `yarn`).

### 3. Understanding `turbo.json`

We now understand our repository and its dependencies. How does Turborepo help?

Turborepo helps by making running tasks simpler and _much_ more efficient.

Let's take a look inside our root `package.json`:

```json
{
  "scripts": {
    "build": "turbo run build",
    "dev": "turbo run dev",
    "lint": "turbo run lint"
  }
}
```

We've got three tasks specified here in `scripts` which use `turbo run`. You'll notice that each of them is specified in `turbo.json`:

```json
{
  "pipeline": {
    "build": {
      //   ^^^^^
      "dependsOn": ["^build"],
      "outputs": ["dist/**", ".next/**"]
    },
    "lint": {
      //   ^^^^
      "outputs": []
    },
    "dev": {
      //   ^^^
      "cache": false
    }
  }
}
```

What we're seeing here is that we've _registered_ three tasks with `turbo` - `lint`, `dev` and `build`. Every task that's registered inside `turbo.json` can be run with `turbo run <task>`.

To see this in action, let's add a script to the root `package.json`:

```diff
# filename: package.json

{
  "scripts": {
    "build": "turbo run build",
    "dev": "turbo run dev --parallel",
    "lint": "turbo run lint",
+   "hello": "turbo run hello"
  }
}
```

Now, let's run `hello`.

```sh
$ pnpm run hello
```

You'll see this error in the console:

```
task `hello` not found in turbo `pipeline` in "turbo.json".
Are you sure you added it?
```

That's worth remembering - **in order for `turbo` to run a task, it must be in `turbo.json`**.

Let's investigate the scripts we already have in place.

### 4. Linting with Turborepo

Try running our `lint` script:

```sh
$ pnpm run lint

> turbo run lint

• Packages in scope: docs, eslint-config-custom, tsconfig, ui, web
• Running lint in 5 packages
• Remote caching disabled
web:lint: cache miss, executing 174b0088fe924d74
ui:lint: cache miss, executing ef5ce6fe1eef3044
docs:lint: cache miss, executing fa3be5b4c67bd542
docs:lint: 
docs:lint: > docs@0.0.0 lint /repo/my-turborepo/apps/docs
docs:lint: > next lint
docs:lint: 
web:lint: 
web:lint: > web@0.0.0 lint /repo/my-turborepo/apps/web
web:lint: > next lint
web:lint: 
ui:lint: 
ui:lint: > ui@0.0.0 lint /repo/my-turborepo/packages/ui
ui:lint: > eslint *.ts*
ui:lint: 
docs:lint: warn  - You have enabled experimental feature (transpilePackages) in next.config.js.
docs:lint: warn  - Experimental features are not covered by semver, and may cause unexpected or broken application behavior. Use at your own risk.
docs:lint: 
web:lint: warn  - You have enabled experimental feature (transpilePackages) in next.config.js.
web:lint: warn  - Experimental features are not covered by semver, and may cause unexpected or broken application behavior. Use at your own risk.
web:lint: 
docs:lint: ✔ No ESLint warnings or errors
web:lint: ✔ No ESLint warnings or errors

 Tasks:    3 successful, 3 total
Cached:    0 cached, 3 total
  Time:    3.606s 
```

You'll notice several things happen in the terminal.

1. Several scripts will be run at the same time, each prefixed with either `docs:lint`, `ui:lint` or `web:lint`.
2. They'll each succeed, and you'll see `3 successful` in the terminal.
3. You'll also see `0 cached, 3 total`. We'll cover what this means later.

The scripts that each run come from each workspace's `package.json`. Each workspace can optionally specify its own `lint` script:

```json
// filename: apps/web/package.json

{
  "scripts": {
    "lint": "next lint"
  }
}
```

```json
// filename: apps/docs/package.json

{
  "scripts": {
    "lint": "next lint"
  }
}
```

```json
// filename: packages/ui/package.json

{
  "scripts": {
    "lint": "eslint *.ts*"
  }
}
```

When we run `turbo run lint`, Turborepo looks at each `lint` script in each workspace and runs it. For more details, see our [pipelines](/repo/docs/core-concepts/monorepos/running-tasks#defining-a-pipeline) docs.

#### Using the cache

Let's run our `lint` script one more time.

```sh
> turbo run lint

• Packages in scope: docs, eslint-config-custom, tsconfig, ui, web
• Running lint in 5 packages
• Remote caching disabled
web:lint: Skipping cache check for web#lint, outputs have not changed since previous run.
web:lint: cache hit, replaying output 174b0088fe924d74
web:lint: 
web:lint: > web@0.0.0 lint /repo/my-turborepo/apps/web
web:lint: > next lint
web:lint: 
web:lint: warn  - You have enabled experimental feature (transpilePackages) in next.config.js.
web:lint: warn  - Experimental features are not covered by semver, and may cause unexpected or broken application behavior. Use at your own risk.
web:lint: 
web:lint: ✔ No ESLint warnings or errors
docs:lint: Skipping cache check for docs#lint, outputs have not changed since previous run.
ui:lint: Skipping cache check for ui#lint, outputs have not changed since previous run.
ui:lint: cache hit, replaying output ef5ce6fe1eef3044
docs:lint: cache hit, replaying output fa3be5b4c67bd542
ui:lint: 
ui:lint: > ui@0.0.0 lint /repo/my-turborepo/packages/ui
ui:lint: > eslint *.ts*
ui:lint: 
docs:lint: 
docs:lint: > docs@0.0.0 lint /repo/my-turborepo/apps/docs
docs:lint: > next lint
docs:lint: 
docs:lint: warn  - You have enabled experimental feature (transpilePackages) in next.config.js.
docs:lint: warn  - Experimental features are not covered by semver, and may cause unexpected or broken application behavior. Use at your own risk.
docs:lint: 
docs:lint: ✔ No ESLint warnings or errors

 Tasks:    3 successful, 3 total
Cached:    3 cached, 3 total
  Time:    35ms >>> FULL TURBO
```

You'll notice a few new things appear in the terminal:

1. `cache hit, replaying output` appears for `docs:lint`, `web:lint` and `ui:lint`.
2. You'll see `3 cached, 3 total`.
3. The total runtime should be under `100ms`, and `>>> FULL TURBO` appears.

Something interesting just happened. Turborepo realised that **our code hadn't changed since the last time we ran the lint script**.

It had saved the logs from the previous run, so it just replayed them.

Let's try changing some code to see what happens. Make a change to a file inside `apps/docs`:

```diff
// filename: apps/docs/pages/index.tsx

import { Button } from "ui";
export default function Docs() {
  return (
    <div>
-     <h1>Docs</h1>
+     <h1>My great docs</h1>
      <Button />
    </div>
  );
}
```

Now, run the `lint` script again.

```sh
> turbo run lint

• Packages in scope: docs, eslint-config-custom, tsconfig, ui, web
• Running lint in 5 packages
• Remote caching disabled
docs:lint: cache miss, executing c2aeca8d3170847a
web:lint: Skipping cache check for web#lint, outputs have not changed since previous run.
web:lint: cache hit, replaying output 174b0088fe924d74
ui:lint: Skipping cache check for ui#lint, outputs have not changed since previous run.
ui:lint: cache hit, replaying output ef5ce6fe1eef3044
web:lint: 
web:lint: > web@0.0.0 lint /repo/my-turborepo/apps/web
web:lint: > next lint
web:lint: 
web:lint: warn  - You have enabled experimental feature (transpilePackages) in next.config.js.
web:lint: warn  - Experimental features are not covered by semver, and may cause unexpected or broken application behavior. Use at your own risk.
web:lint: 
web:lint: ✔ No ESLint warnings or errors
ui:lint: 
ui:lint: > ui@0.0.0 lint /repo/my-turborepo/packages/ui
ui:lint: > eslint *.ts*
ui:lint: 
docs:lint: 
docs:lint: > docs@0.0.0 lint /repo/my-turborepo/apps/docs
docs:lint: > next lint
docs:lint: 
docs:lint: warn  - You have enabled experimental feature (transpilePackages) in next.config.js.
docs:lint: warn  - Experimental features are not covered by semver, and may cause unexpected or broken application behavior. Use at your own risk.
docs:lint: 
docs:lint: ✔ No ESLint warnings or errors

 Tasks:    3 successful, 3 total
Cached:    2 cached, 3 total
  Time:    2.29s
```

You'll notice that:

1. `docs:lint` has a comment saying `cache miss, executing`. This means that `docs` is running its linting.
2. `2 cached, 3 total` appears at the bottom.

This means that **the results of our previous tasks were still cached**. Only the `lint` script inside `docs` actually ran - again, speeding things up. To learn more, check out our [caching docs](/repo/docs/core-concepts/caching).

### 5. Building with Turborepo

Let's try running our `build` script:

```sh
$ pnpm run build

> turbo run build

• Packages in scope: docs, eslint-config-custom, tsconfig, ui, web
• Running build in 5 packages
• Remote caching disabled
docs:build: cache miss, executing d51ef13d9b751df5
web:build: cache miss, executing 0c1a648d90d668e2
web:build: 
web:build: > web@0.0.0 build /repo/my-turborepo/apps/web
web:build: > next build
web:build: 
docs:build: 
docs:build: > docs@0.0.0 build /repo/my-turborepo/apps/docs
docs:build: > next build
docs:build: 
web:build: warn  - You have enabled experimental feature (transpilePackages) in next.config.js.
web:build: warn  - Experimental features are not covered by semver, and may cause unexpected or broken application behavior. Use at your own risk.
web:build: 
docs:build: warn  - You have enabled experimental feature (transpilePackages) in next.config.js.
docs:build: warn  - Experimental features are not covered by semver, and may cause unexpected or broken application behavior. Use at your own risk.
docs:build: 
web:build: info  - Linting and checking validity of types...
docs:build: info  - Linting and checking validity of types...
web:build: info  - Creating an optimized production build...
docs:build: info  - Creating an optimized production build...
web:build: info  - Compiled successfully
web:build: info  - Collecting page data...
docs:build: info  - Compiled successfully
docs:build: info  - Collecting page data...
web:build: info  - Generating static pages (0/3)
docs:build: info  - Generating static pages (0/3)
web:build: info  - Generating static pages (3/3)
docs:build: info  - Generating static pages (3/3)
web:build: info  - Finalizing page optimization...
web:build:

[...truncated...]

docs:build: info  - Finalizing page optimization...
docs:build: 
docs:build: Route (pages)                              Size     First Load JS
docs:build: ┌ ○ /                                      309 B          72.3 kB
docs:build: └ ○ /404                                   182 B          72.2 kB
docs:build: + First Load JS shared by all              72 kB
docs:build:   ├ chunks/framework-8af95668ad427548.js   45.4 kB
docs:build:   ├ chunks/main-ed7f024bdadf6dfa.js        25.7 kB
docs:build:   ├ chunks/pages/_app-3b61f23bbbc57ccf.js  194 B
docs:build:   └ chunks/webpack-4e7214a60fad8e88.js     712 B
docs:build: 
docs:build: ○  (Static)  automatically rendered as static HTML (uses no initial props)
docs:build: 

 Tasks:    2 successful, 2 total
Cached:    0 cached, 2 total
  Time:    12.43s
```

You'll see similar outputs to when we ran our lint script. Only `apps/docs` and `apps/web` specify a `build` script in their `package.json`, so only those are run.

Take a look inside `build` in `turbo.json`. There's some interesting config there.

```json
// filename: turbo.json

{
  "pipeline": {
    "build": {
      "outputs": [".next/**"]
    }
  }
}
```

You'll notice that some `outputs` have been specified. Declaring outputs will mean that when `turbo` finishes running your task, it'll save the output you specify in its cache.

Both `apps/docs` and `apps/web` are Next.js apps, and they output builds to the `./.next` folder.

Let's try something. Delete the `apps/docs/.next` build folder.

Run the `build` script again.

```sh
> turbo run build

• Packages in scope: docs, eslint-config-custom, tsconfig, ui, web
• Running build in 5 packages
• Remote caching disabled
web:build: Skipping cache check for web#build, outputs have not changed since previous run.
web:build: cache hit, replaying output 0c1a648d90d668e2
web:build: 
web:build: > web@0.0.0 build /repo/my-turborepo/apps/web
web:build: > next build

[...truncated...]

web:build: 
docs:build: cache hit, replaying output d51ef13d9b751df5
docs:build: 
docs:build: > docs@0.0.0 build /repo/my-turborepo/apps/docs
docs:build: > next build

[...truncated...]

docs:build: 

 Tasks:    2 successful, 2 total
Cached:    2 cached, 2 total
  Time:    75ms >>> FULL TURBO
```

You'll notice:

1. We hit `FULL TURBO` - the builds complete in under `100ms`.
2. The `.next` folder re-appears!

Turborepo cached the result of our previous build. When we ran the `build` command again, it restored the entire `.next/**` folder from the cache. To learn more, check out our docs on [cache outputs](/repo/docs/core-concepts/caching#configuring-cache-outputs).

### 6. Running dev scripts

Let's now try running `dev`.

```sh
$ pnpm run dev

> turbo run dev --parallel

• Packages in scope: docs, eslint-config-custom, tsconfig, ui, web
• Running dev in 5 packages
• Remote caching disabled
docs:dev: cache bypass, force executing c1420c65b8dfbbd0
web:dev: cache bypass, force executing 88f44f44c84a87f4
web:dev: 
web:dev: > web@0.0.0 dev /repo/my-turborepo/apps/web
web:dev: > next dev
web:dev: 
docs:dev: 
docs:dev: > docs@0.0.0 dev /repo/my-turborepo/apps/docs
docs:dev: > next dev --port 3001
docs:dev: 
docs:dev: ready - started server on 0.0.0.0:3001, url: http://localhost:3001
web:dev: ready - started server on 0.0.0.0:3000, url: http://localhost:3000
web:dev: warn  - You have enabled experimental feature (transpilePackages) in next.config.js.
web:dev: warn  - Experimental features are not covered by semver, and may cause unexpected or broken application behavior. Use at your own risk.
web:dev: 
docs:dev: warn  - You have enabled experimental feature (transpilePackages) in next.config.js.
docs:dev: warn  - Experimental features are not covered by semver, and may cause unexpected or broken application behavior. Use at your own risk.
docs:dev: 
web:dev: event - compiled client and server successfully in 2.6s (136 modules)
docs:dev: event - compiled client and server successfully in 2.6s (136 modules)
```

You'll notice some information in the terminal:

1. Only two scripts will execute - `docs:dev` and `web:dev`. These are the only two workspaces which specify `dev`.
2. Both `dev` scripts are run simultaneously, starting your Next.js apps on ports `3000` and `3001`.
3. In the terminal, you'll see `cache bypass, force executing`.

Try quitting out of the script, and re-running it. You'll notice we don't go `FULL TURBO`. Why is that?

Take a look at `turbo.json`:

```json
// filename: turbo.json

{
  "pipeline": {
    "dev": {
      "cache": false
    }
  }
}
```

Inside `dev`, we've specified `"cache": false`. This means we're telling Turborepo _not_ to cache the results of the `dev` script. `dev` runs a persistent dev server and produces no outputs, so caching it makes no sense. Learn more about in our docs on [turning off caching](/repo/docs/core-concepts/caching#turn-off-caching).

#### Running `dev` on only one workspace at a time

By default, `turbo run dev` will run `dev` on all workspaces at once. But sometimes, we might only want to choose one workspace.

To handle this, we can add a `--filter` flag to our command. This `--filter` gets passed to the `turbo` CLI.

```sh
$ pnpm run dev --filter docs

> turbo run dev --parallel "--filter" "docs"

• Packages in scope: docs
• Running dev in 1 packages
• Remote caching disabled
docs:dev: cache bypass, force executing c1420c65b8dfbbd0
docs:dev: 
docs:dev: > docs@0.0.0 dev /repo/my-turborepo/apps/docs
docs:dev: > next dev --port 3001
docs:dev: 
docs:dev: ready - started server on 0.0.0.0:3001, url: http://localhost:3001
docs:dev: 
docs:dev: event - compiled client and server successfully in 885 ms (136 modules)
docs:dev: wait  - compiling / (client and server)...
```

You'll notice that it now only runs `docs:dev`. Learn more about [filtering workspaces](/repo/docs/core-concepts/monorepos/filtering) from our docs.

### Summary

Well done! You've learned all about your new monorepo, and how Turborepo makes handling your tasks easier.
