# 🚀 Git Advanced Strategies Cheat Sheet

## 🛠️ Basic Commands

- 📥 Clone: `git clone <repository-url>`
- 🔄 Fetch: `git fetch origin`
- ⬇️ Pull: `git pull origin <branch-name>`
- ⬆️ Push: `git push origin <branch-name>`
- 🌱 Create branch: `git checkout -b <new-branch-name>`
- 🔀 Switch branch: `git checkout <branch-name>`

## 🤝 Merge

What: Combines two branches by creating a new commit
Why: Integrate completed features, preserve full history
How: `git merge <branch-name>`

✅ Pros:
- 📜 Preserves complete history
- 🛡️ Non-destructive operation
- 🧠 Easy to understand and use

❌ Cons:
- 🌳 Can create a messy history with many merge commits
- 🔙 May complicate reverting changes

## 🔄 Rebase

What: Moves or combines a sequence of commits to a new base commit
Why: Create linear history, update feature branches
How:
- 🔁 Basic rebase: `git rebase <base-branch>`
- 🎛️ Interactive rebase: `git rebase -i <commit-hash>`
- 🚀 Push after rebase: `git push --force-with-lease`

✅ Pros:
- 📊 Creates a clean, linear history
- 🔍 Easier to track changes
- 🧹 Facilitates cleaner merges

❌ Cons:
- ✏️ Rewrites commit history (risky for shared branches)
- 🧩 Can be complex to resolve conflicts
- 💪 Requires force push if branch was previously pushed

🛡️ Force Push with Lease:
- Use `--force-with-lease` when pushing rebased branches
- Safer than `--force`, prevents overwriting others' work
- Checks if remote branch has been updated since your last fetch
- Example: `git push --force-with-lease origin feature-branch`

⚠️ Caution: Always communicate with your team before force pushing to shared branches!

## 🍒 Cherry-pick

What: Applies changes from specific commits to the current branch
Why: Apply specific fixes or features to multiple branches
How: `git cherry-pick <commit-hash>`

✅ Pros:
- 🎯 Precise control over which changes to apply
- 🔧 Useful for applying fixes to multiple release branches

❌ Cons:
- 👯 Can create duplicate commits
- 🔀 May lead to complex conflict resolution
- 🕵️ Can make history tracking more difficult

## 🧹 Maintaining Clean Commit History

🔄 Squash:
What: Combining multiple commits into one
Why: Create a clean, logical history before merging
How: During interactive rebase (`git rebase -i`), mark commits as 'squash' or 's'

📏 Clean History Best Practices:
1. 🧱 Make atomic commits (one logical change per commit)
2. 📝 Use descriptive commit messages
3. 🤏 Squash related commits before merging to main branches
4. 🔄 Rebase feature branches on main regularly

🎛️ Interactive Rebase for Cleaning:
1. 🏁 Start: `git rebase -i HEAD~n` (n = number of commits to review)
2. ✏️ Mark commits:
   - 'p' or 'pick': keep commit as is
   - 's' or 'squash': meld into previous commit
   - 'r' or 'reword': change the commit message
   - 'd' or 'drop': remove the commit
3. 💾 Save and exit to apply changes

🌟 Example Workflow:
1. 🔨 Make small, frequent commits during development
2. 🚦 Before PR:
   - 🔄 Rebase on latest main: `git rebase main`
   - 🤏 Squash commits: `git rebase -i HEAD~n`
3. 📝 Write a comprehensive commit message for the squashed commit
4. 🚀 Force push to update PR: `git push --force-with-lease`

💡 Remember: Clean history aids in code review, bug tracking, and understanding project evolution

## 🏆 Best Practices

1. 💬 Commit Messages:
   - Use present tense: "Add feature" not "Added feature"
   - Be specific and concise
   - Reference issue numbers if applicable

2. 🌿 Branching:
   - Create feature branches from `main`
   - Keep branches short-lived
   - Regularly sync with `main`

3. 🚀 Before Pushing:
   - Squash related commits
   - Ensure tests pass
   - Review your changes

4. 🤔 Merging vs. Rebasing:
   - Merge for shared branches
   - Rebase for personal feature branches

5. 🚧 Conflict Resolution:
   - Communicate with team
   - Understand both changes
   - Test thoroughly after resolving

## 🏢 Monorepo Specific

- 🚩 Use feature flags for long-running features
- 🤝 Coordinate releases across teams
- 🏷️ Maintain clear ownership of code areas

## 🔄 Workflow Summary

1. 🌱 Create feature branch from `main`
2. 🔨 Make changes and commit regularly
3. 🔄 Rebase on `main` frequently
4. 🤏 Squash commits before PR
5. 👀 Code review
6. 🤝 Merge to `main` (or `staging`)
7. 🗑️ Delete feature branch

💡 Remember: Communication is key in a multi-team environment!
