# env vars:
export VERSION_CODENAME=bookworm # For Docker

# Run the setup:
directories=("docker" "photo_frame")

for dir in "${directories[@]}"; do
    echo -e "\nDirectory: $dir"
    sh $dir/entrypoint.sh
done




