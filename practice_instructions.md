# 🚀 Git Launch Sequence Exercise

## Setup
1. Run the provided bash script to create the "rocket_launch" repository.
2. Navigate to the created 'rocket_launch' directory.

## Mission Objectives

### 1. Fetch latest changes (AKA "What did everyone else break?")
```bash
git fetch origin
cd rocket_launch
```
(In our local setup, this won't do much, but imagine it's fetching remote changes)

### 2. Rebase feature branch

```bash
git checkout feature/oxygen-systems
git rebase staging
```
This will add the weather check and launch pad systems to your oxygen systems feature.

### 3. Prepare for cleaning up your commits
Since we will be changing our commit tree, let's create a fresh branch to keep our original commits safe. If you are sure what you are doing, or have pushed your branch before rebasing, you can skip this step.
```bash
git checkout -b feature/oxygen-systems-rebase
```

### 4. Cleaning up commit tree with interactive rebase
```bash
git rebase -i HEAD~5
```

In the opened editor, perform the following tasks. It is suggested to perform them one by one and run interactive rebase for each group task to avoid confusion. Later on you can combine them into a single rebase when you will become comfortable with how it's working.

a) Reorder commits:
   - Move the "Check O2 purity" commit to be right after "Add oxygen systems check"
b) Rewrite commit messages:
   - Change "WIP: Start oxygen sensor calibration" to "Implement oxygen sensor calibration"
   - Change "oxygen distribution test" to "Implement oxygen distribution test"
c) Squash commits:
   - Squash "Add double-check for oxygen tanks" into "Add oxygen systems check"
   - Squash "Check O2 purity" into "Add oxygen systems check"

Your final order should look something like this:
```
pick xxxxxxx Add oxygen systems check
squash xxxxxxx Add double-check for oxygen tanks
squash xxxxxxx Check O2 purity
pick xxxxxxx Implement oxygen sensor calibration
pick xxxxxxx Implement oxygen distribution test
```

Save and close the editor. In the next editor, update the commit messages as needed.

### 4. Force push (Use the Force, but wisely)
```bash
git push origin feature/oxygen-systems --force-with-lease
```
(This is a simulation, as we don't have a remote repository)

## Bonus Launch Preparations

5. Cherry-pick the hotfix:
```bash
git cherry-pick hotfix/communication-systems
```
This adds the emergency communication systems to your feature branch.

6. Merge your feature into main:
```bash
git checkout main
git merge feature/oxygen-systems
```

7. Resolve any conflicts and complete the merge.

## Mission Debriefing
- Examine the final checklist: `cat checklist.txt`
- View the commit history: `git log --oneline --graph --all`

## Discussion Points
- How did reordering and squashing commits improve the readability of your Git history?
- What challenges might you face when rewriting history on a shared branch?
- How does this more complex Git workflow help in managing a large-scale project?

Remember: In real-world missions, always communicate with your crew before rewriting shared Git history!