git diff-tree --no-commit-id --name-status -r master | while read status filename; do
  if [[ $status -eq "M" ]]; then
    echo "Copy $filename to S3"
  elif [[ $status -eq "D" ]]; then
    echo "Delete $filename from S3"
  else
    echo "Skip"
  fi
done
