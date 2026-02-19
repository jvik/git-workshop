# Exercise 2 - Branches and Merging

## :bulb: Goal

Learn to create branches, merge changes, and resolve conflicts.

## 2.1 - Create a Branch

:pencil2: Check you're on `main` (`git branch`) then create a new branch:

```shell
git checkout -b feature-branch-1
```

:pencil2: Create a file `index.ts` with this content:

```ts
/**
 * Function that greets a person
 * @param name Name of person
 */
export const greeting = (name: string) => {
  console.log(`Hello ${name}`);
};
```

:pencil2: Commit the file:

```shell
git add index.ts
git commit -m "Add greeting function"
```

## 2.2 - Merge to Main

:pencil2: Switch to `main` and merge your feature branch:

```shell
git checkout main
git merge feature-branch-1
```

An editor will open for the merge commit message. Save and close to complete the merge.

## 2.3 - Handle a Merge Conflict

:bulb: When multiple people work on the same files, conflicts can occur. Let's practice resolving them.

## 2.3 - Handle a Merge Conflict

:bulb: When multiple people work on the same files, conflicts can occur. Let's practice resolving them.

:pencil2: Create branch `feature-branch-2` from `main`. Replace `index.ts` contents with the code from `code/2.3-change-1.ts` in this repo. Commit it.

:pencil2: Check out `main`, then create `feature-branch-3`. Replace `index.ts` with code from `code/2.3-change-2.ts`. Commit it.

:pencil2: Merge `feature-branch-2` into `main`, then try merging `feature-branch-3` into `main`.

:bulb: You'll see a conflict! In VS Code, go to Source Control tab, find the file under "Merge Changes", and click **"Resolve in Merge Editor"**.

:bulb: You'll see three windows:
- **Incoming**: Changes from the branch being merged
- **Current**: Current content in `main`
- **Result**: What the final merge will look like

:pencil2: Choose which changes to keep by clicking "Accept Incoming", "Accept Current", or "Accept Both". Click "Complete Merge".

:pencil2: Complete the merge in terminal:

```shell
git add index.ts
git commit -m "Resolve merge conflict"
```

:pencil2: Push to GitHub:

```shell
git push
```

---

[:arrow_right: Go to the next exercise](../exercise-3/README.md)
