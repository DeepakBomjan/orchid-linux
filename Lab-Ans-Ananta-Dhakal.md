### 1. Lab Scenario: Organizing Your Project Files
**ANS:**
1. To navigate to home directory
   ```bash
   cd or cd ~
   ```
2. Create a directory named project
   ```bash
   mkdir project
   ```
3. Navigate into the project directory.
   ```bash
   cd project
### 2.Create Subdirectories:   
**ANS:**
1. Create two subdirectories named docs and src
```bash
mkdir docs /mkdir src OR mkdir -p project/docs project/src
```
### 3. Create Files in docs Directory:  
**ANS:**
1.Navigate into the docs directory.
```bash
cd docs
```
2.Create an empty file named README.md
```bash
touch README.md
```
3. Create an empty file named LICENSE.
   ```bash
   touch LICENSE
   ```
4. List the files to confirm they are created
   ```bash
   ls -l
   ```
### 4. Copy Files: 
**ANS:**
1.Copy README.md to the src directory.
```bash
cp docs /README.md /src
```
2.Navigate to the src directory to confirm the file was copied and list the contents.
```bash
cd src
ls
```
### 5. Move Files: 
**ANS:**
1.Rename README.md in the src directory to INTRO.md.
```bash
mv README.md INTRO.md
```
2. Confirm the file was renamed by listing the directory contents.
   ```bash
   ls
   ```
### 6. Remove Files:
**ANS:**
1.Remove the LICENSE file from the docs directory.
```bash
rm docs/LICENSE
```
2.Navigate to the docs directory and confirm the file was removed by listing the contents.
```bash
cd docs
ls
```   
### 7. Remove Directories:
**ANS:**
1.Navigate to the parent project directory.
```bash
cd project
```
2.Remove the docs directory and its contents.
```bash
rm -r docs
```
3.Confirm the directory was removed by listing the contents of the parent directory.
```bash
ls
```
### Lab Scenario: Navigating Your Project Directory Tree
**ANS:**
### 1.Create a Directory Tree:
**ANS:**
1. Navigate to your home directory
   ```bash
   cd home
   ```
2.Create a directory named project.
```bash
mkdir project
```
3.Navigate into the project directory.
```bash
cd project
```
4. Within project, create two subdirectories named docs and src.
   ```bash
   mkdir -p project/docs project/src
   ```
5.Inside the docs directory, create another directory named guides.
```bash
mkdir project/docs/guides or cd project/docs  mkdir guides
```
6.Inside the src directory, create a directory named scripts.
```bash
mkdir project/src/scripts
```
### 2.Navigating the Directory Tree Using Relative Paths:
**ANS:**
1.From the project directory, navigate into the docs directory.
```bash
cd project/docs
```
2.From docs, navigate into the guides directory.
```bash
cd docs/guides
```
3.From guides, navigate back to the docs directory.
```bash
cd . or cd docs
```
4.From docs, navigate up to the project directory.
```bash
cd project
```
5.From project, navigate into the src directory.
```bash

