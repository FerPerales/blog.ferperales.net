jekyll build
rsync -v -rz --checksum --delete _site/ $SSH_USERNAME@$HOST:$DESTINATION
