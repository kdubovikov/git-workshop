---
marp: true
theme: gaia
paginate: false
---

# 🧙‍♂️ Commit-ment to Excellence
## A Git Wizardry Spellbook

---

## 🎯 Objectives

- Master the dark arts of merge, rebase, and cherry-pick
- Become the Git whisperer your team deserves
- Transform your commit history from "meh" to "magnificent"

---

## 📚 Git: More Than Just a Shared Code Shelf 

- It's like Facebook for your code - every change has a story
- Commit history: The diary your future self will thank you for (I will thank you as well)

---

# 🎭 The Three Faces of Git

---

## 🤝 Merge: The Peacemaker

- Definition: Combining two branches by creating a new commit
- When to use:
  - Integrating completed features into main branches
  - When you want to preserve the exact history of a branch
- Pros: Preserves history, non-destructive
- Cons: Can create a history messier than a toddler's art project

---

## 🔄 Rebase: The Time Traveler

- Definition: Moving or combining a sequence of commits to a new base commit
- When to use:
  - When you want your Git history to look like you never make mistakes
  - Cleaning up commit history 
  - Moving changes from other shared branches to your feature branch
- Pros: Creates a linear history, easier to understand
- Cons: Rewrites commit history,  complex for shared branches

---

## 🔄 Rebase: Example

Rebase replays the commits from your feature branch on top of the latest commits from the staging branch.

---

## 🔄 Rebase: Example

Before rebase:
```
A---B---C (staging)
     \
      D---E---F (feature/my-branch)
```

After rebase:
```
A---B---C (staging)
         \
          D'---E'---F' (feature/my-branch)
```

---

## 🍒 Cherry-pick: The Picky Eater

- Definition: Applying the changes from specific commits to the current branch
- When to use:
  - When you only want the tasty bits from other branches
  - For applying that one brilliant line of code you wrote at 3 AM
- Pros: Precise control over which changes to apply
- Cons: Can create duplicate commits, may lead to conflicts

---

# 📜 Commit History: Your Code's Biography

- Facilitates easier code review and understanding of project evolution
- Helps in debugging and tracing changes
- Helps reviewers understand the context and purpose of changes

---

## 💌 Commit Messages: Love Letters to Future You

- Use a clear, concise subject line
- Provide detailed explanation in the body if necessary
- Reference issue numbers or tickets
- Squash or rewrite commits with unclear messages before merging

---

## 👍 vs 👎 Commit History

Good: 
```
PLAT-82 Add user authentication
```

Bad: 
```
fixed stuff
did things
auth changes
```

---

# 🌳 Branching: A Family Tree for Your Code

---

## 🎭 Goals: Handling Different Release Cycles

- Managing features with varying completion times
- Strategies for releasing some features while others are in progress

---

## 🌿 The Circle of Life: main -> feature -> staging -> main

- Features are created from main
- Features developed in isolation
- Staging branch for integration testing
- Main branch for production-ready code
- Staging does not go to main directly, everything goes through feature branches

---

# 🎬 Practical Scenarios: Git in the Wild

---

## 🎭 Scenario 1: The Branch Update Dilemma

Group Discussion: Merge vs. Rebase - Fight!

---

Best Practice: Rebase for cleaner history, unless branch is shared

---

## 🔧 Scenario 2: The Multi-Branch Fix Frenzy

Group Discussion: Cherry-pick vs. Merge - Choose your weapon

---

Best Practice: Cherry-pick, for precise control, when you need to be a code sniper

---

## 🧹 Scenario 3: The Pre-Merge Cleanup

Group Discussion: Squash and merge vs. Rebase and merge

---

Best Practice: Squash and merge for a clean, summarized history

---

# 🏋️ Hands-on Exercise

---

## 🚀 Launch Sequence

1. Fetch latest changes (AKA "What did everyone else break?")
2. Rebase feature branch 
3. Interactive rebase 
4. Force push (Use the Force, but wisely)

---

## 🧘‍♂️ Best Practices: The Git Zen

- Rebase vs. Merge: Choose your battles
- Communication: Because mind-reading is not a Git feature
- Feature flags: For when you want to hide your unfinished masterpiece

---

# 🎓 Q&A and Conclusion

---

## 🗝️ Key Takeaways

- Importance of clean commit history
- Strategic use of merge, rebase, and cherry-pick
- Communication and coordination in team Git workflows

---

# 🎉 Thanks for Git-ting Through This!

Remember: With great Git power comes great responsibility (and fewer merge conflicts)