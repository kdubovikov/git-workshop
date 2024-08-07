#!/bin/bash

# Create and initialize the repository
mkdir rocket_launch && cd rocket_launch
git init
1
# Create main branch with initial commit
echo "🚀 Rocket Launch Checklist" > checklist.txt
echo "1. [ ] Fuel the rocket" >> checklist.txt
git add checklist.txt
git commit -m "Initial commit: Create rocket launch checklist"

# Create and switch to staging branch
git checkout -b staging
echo "2. [ ] Check weather conditions" >> checklist.txt
git commit -am "Add weather check to checklist"

# Create feature branch for oxygen systems
git checkout -b feature/oxygen-systems main
echo "3. [ ] Verify oxygen systems" >> checklist.txt
git commit -am "Add oxygen systems check"
echo "4. [ ] Double-check oxygen tanks" >> checklist.txt
git commit -am "Add double-check for oxygen tanks"
echo "5. [ ] Calibrate oxygen sensors" >> checklist.txt
git commit -am "WIP: Start oxygen sensor calibration"
echo "6. [ ] Test oxygen distribution" >> checklist.txt
git commit -am "oxygen distribution test"
echo "7. [ ] Verify oxygen purity levels" >> checklist.txt
git commit -am "Check O2 purity"

# Switch back to main and make a change
git checkout main
echo "2. [ ] Perform safety checks" >> checklist.txt
git commit -am "Add safety checks to main checklist"

# Switch to staging and make another change
git checkout staging
echo "3. [ ] Activate launch pad systems" >> checklist.txt
git commit -am "Activate launch pad systems in staging"

# Create a hotfix branch
git checkout -b hotfix/communication-systems main
echo "📡 Emergency Communication Systems" > emergency.txt
echo "1. [ ] Test radio frequencies" >> emergency.txt
git add emergency.txt
git commit -m "Add emergency communication systems checklist"

echo "Repository created!"
echo "You're ready for your Git adventure! 🚀"
