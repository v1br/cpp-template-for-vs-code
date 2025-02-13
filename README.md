# cpp-template-for-vs-code

This is a standard template for building cross-platform C++ projects from scratch using VS Code (or any other popular text editor), instead of relying on an IDE. It's perfect for small-scale projects, testing concepts, or prototyping, allowing you to quickly set up and run your project with minimal configuration.

### Project Structure
The project is organized as follows:

- assets: Stores media files (images, sounds, etc.) used in the project.
- build: Contains the object files and the final executable generated during the build process.
- conan: Contains Conan-related files for managing dependencies.
- libs: Static or dynamic libraries added to the project.
- src: Contains all C++ source files and headers. The default entry point is main.cpp.

You can extend the project structure to include more directories like tests for unit tests or docs for documentation.

### Configure Project
To start building and running the project, follow these steps:

**Manually adding libraries**
Download or build your desired libraries.
Place them in the libs folder (e.g., libs/sfml for SFML). Edit the `Makefile` to include the correct paths for headers and libraries.

**Using Conan to Add Dependencies**
Conan simplifies adding external libraries to your project. To use Conan, create or modify the `conanfile.txt` to add the libraries you need. For example, to add fmt:

```
[requires]
fmt/9.1.0
```

Install the dependencies by running the following commands from the project root:

```
cd conan
conan profile detect
conan install . --build=missing
```
After installation, include the necessary paths (headers and libraries) in your `Makefile`.

Build and Run the Project
You can build and run the project using the following commands:

### Build Project
You can build and run the project using the following commands:

- `make`: Clean, recompile, link, and run the latest build.
- `make clean`: Remove the previous build from the ./build directory.
- `make compile`: Compile the source files into object files in the ./build directory.
- `make link`: Link the object files with the required dependencies.
- `make run`: Execute the latest build from the ./build directory.

### License
This project is licensed under the MIT License - see the [LICENSE](LICENSE.md) file for details.