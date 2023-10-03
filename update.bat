@echo off

echo updating the catalogue of this gitbook...
book sm

echo building the gitbook...
gitbook build

echo Which folder do you want to deploy to GitHub Pages?
set /p var=
echo Please input commit message:
set /p message=

git add %var%
git commit -m "%message%"
git subtree push --prefix %var% origin master
pause