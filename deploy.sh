git branch -D gh-pages
git checkout -b gh-pages
git merge master --no-edit
JEKYLL_ENV=production jekyll build
rm -rf docs
mv -f _site/ docs/
cd docs
echo 'blog.ferperales.net' > CNAME
git add .
git commit -m "New release"
git push origin gh-pages -f
git checkout master
