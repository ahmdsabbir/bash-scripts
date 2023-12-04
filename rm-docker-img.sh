#!/bin/bash

# List of Docker image names or IDs to remove
images_to_remove=("551b2588976e" "312e1352a7ed" "06b6add8fe59" "d5cf41697f8b" "48b5fc19f30e" "8db5ff0da2c0" "78306c483595" "d85e523a57d9" "54280392c4ec" "32277ee9c6ec" "870bbc0a9fe7" "4b50f8e71e94" "5b237d236516" "ae2df92a544f" "3b989722780f" "9eab651505c1" "2c3316bc35ea" "37c6f8d614a4" "75d639f109fe" "b0b0835d5a06" "bb1593c2f625" "9abc368d172f" "2d73b06a15d9" "a40e25316a6e" "be8201a8ea59" "f943bc157899" "56725f5f143a")


# Iterate through the list and remove each image
for image in "${images_to_remove[@]}"; do
    echo "Removing Docker image: $image"
    docker rmi "$image"
done

echo "Docker image removal complete."
