# container-to-image

Convert an existing container to an image

## Usage

To use the `commit.sh` bash script, follow these steps:

1. Clone & Run the script with the desired container name and image name:

    ```bash
    git clone https://github.com/plybots/container-to-image.git && cd container-to-image && chmod +x commit.sh && ./commit.sh <container-name> <registry-url> && docker images
    ```

    Replace `<container-name>` with the name of the existing container you want to convert, and `<image-name>` with the desired name for the resulting image.

2. The script will create a new image based on the specified container and tag it with the provided image name.

3. Verify that the image has been created successfully by running:

    ```bash
    docker images
    ```

    You should see the newly created image in the list.
    

That's it! You have successfully converted an existing container to an image using the `commit.sh` bash script.






