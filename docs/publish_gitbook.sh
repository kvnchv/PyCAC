# cp all files into the github directory
cp -r * $HOME/dropbox/ME-DboxMgmt-McDowell-David-Students/DLMgroup-Documents/chu-k/pycac-doc/PyCAC/docs
cp -r ../README.md $HOME/dropbox/ME-DboxMgmt-McDowell-David-Students/DLMgroup-Documents/chu-k/pycac-doc/PyCAC/

# cd into the github directory
cd $HOME/dropbox/ME-DboxMgmt-McDowell-David-Students/DLMgroup-Documents/chu-k/pycac-doc/PyCAC/

# install the plugins 
gitbook install

# generate pdf
gitbook pdf ./ ./PyCAC.pdf

# build the static site
gitbook build

# copy the static site files into the current directory.
cp -R _book/* .

# remove 'node_modules' and '_book' directory
git clean -fx node_modules
git clean -fx _book

# add all files
git pull
git add .

# commit
git commit -a -m "Update docs"

git push origin master

# generate a cover for the pdf file
#https://plugins.gitbook.com/plugin/autocover

#git checkout gh-pages

#rm -fr ../.git/rebase-apply

#git rebase master

#git push origin gh-pages

#git checkout master
