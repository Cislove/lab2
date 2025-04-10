git init
echo "- инициализация репозитория"

git config user.name "red"
git config user.email "red@example.com"

git checkout -b branch1

unzip -o commits/commit0.zip -d src\
git add .
git commit -m "Initial commit" 
echo "- r0 от red"

git checkout -b branch3

unzip -o commits/commit1.zip -d src
git add .
git commit -m "r1" 
echo "- r1 от red"

git checkout -b branch2

unzip -o commits/commit2.zip -d src
git add .
git commit -m "r2" --author="blue <blue@example.com>"  
echo "- r2 от blue"

git checkout branch1

unzip -o commits/commit3.zip -d src
git add .
git commit -m "r3" 
echo "- r3 от red"

git checkout branch3

unzip -o commits/commit4.zip -d src
git add .
git commit -m "r4" 
echo "- r4 от red"

unzip -o commits/commit5.zip -d src
git add .
git commit -m "r5" 
echo "- r5 от red"

git checkout branch2

unzip -o commits/commit6.zip -d src
git add .
git commit -m "r6" --author="blue <blue@example.com>"  
echo "- r6 от blue"

git checkout branch1

unzip -o commits/commit7.zip -d src
git add .
git commit -m "r7" 
echo "- r7 от red"

git checkout branch3

unzip -o commits/commit8.zip -d src
git add .
git commit -m "r8" 
echo "- r8 от red"

git checkout branch2

unzip -o commits/commit9.zip -d src
git add .
git commit -m "r9" --author="blue <blue@example.com>"  
echo "- r9 от blue"

unzip -o commits/commit10.zip -d src
git add .
git commit -m "r10" --author="blue <blue@example.com>"  
echo "- r10 от blue"

git chekout branch3

unzip -o commits/commit11.zip -d src
git add .
git commit -m "r11" 
echo "- r11 от red"

##Если хотим оставить конфликтные файлы из ветки3
git merge --no-commit branch2 -Xtheirs

#Если хотим оставить конфликтные файлы из ветки2
# git merge --no-commit branch2 -Xours

#Если хотим вручную устранить конфликты
#git merge --no-commit branch2

unzip -o commits/commit12.zip -d src
git add .
git commit -m "r12" 
echo "- r12 от red"

git checkout branch1

##Если хотим оставить конфликтные файлы из ветки1
git merge --no-commit branch3 -Xtheirs

#Если хотим оставить конфликтные файлы из ветки3
# git merge --no-commit branch3 -Xours

#Если хотим вручную устранить конфликты
#git merge --no-commit branch3

unzip -o commits/commit13.zip -d src
git add .
git commit -m "r13" 
echo "- r13 от red"

unzip -o commits/commit14.zip -d src
git add .
git commit -m "r14" 
echo "- r14 от red"

git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(auto)%d%C(reset)' --all
