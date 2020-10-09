git checkout gh-pages
JEKYLL_ENV=production jekyll build
mv _site/ docs/
git add .
git commit -m "New release"
git push origin gh-pages
