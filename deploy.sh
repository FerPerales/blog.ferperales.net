JEKYLL_ENV=production jekyll build --incremental
rsync -v -rz --checksum --delete _site/ $SSH_USERNAME@$HOST:$DESTINATION
