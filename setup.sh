#!/bin/bash
# env vars:
export VERSION_CODENAME=bookworm # For Docker

# Run the setup:
directories=("docker" "photo_frame")


for dir in "${directories[@]}"; do
    echo -e "\nDirectory: $dir"
    find $dir -type f -name "*.sh" -exec chmod +x {} \;
    bash $dir/entrypoint.sh
done




