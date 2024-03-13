<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/jeffersonroth/mdbook-environment-dev">
    <img src="assets/images/logo.svg" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">Docker Image with dev tools for mdBook projects</h3>

  <p align="center">
    Docker Image with markdown and mdBook dev tools. It is meant for internal projects.
  </p>
</p>

<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li><a href="#getting-started">Getting Started</a></li>
    <li><a href="#development">Development</a></li>
    <li><a href="#dependencies">Dependencies</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>

<!-- GETTING STARTED -->

## Getting Started

1. Clone the repo

   ```sh
   git clone https://github.com/jeffersonroth/mdbook-environment-dev.git
   ```

<!-- DEVELOPMENT -->

## Development

Before pushing your local branch:

1. Build and test the docker image locally:
    
    ```sh
    docker build -t local-mdbook-base-image-dev .
    ```

2. Run linters

   ```sh
   markdownlint-cli2 | tee mdlint
   ```

3. Run link checkers

  ```sh
  find . -name \*.md -print0 | xargs -0 -n1 markdown-link-check | tee mdlink
  ```

4. Push changes to Docker Hub

   ```sh
   sh ./dockerhub-deploy.sh
   ```

<!-- DEPENDENCIES -->

## Dependencies

### Markdown Linter
>
> CLI tool to check and apply lint rules in markdown files.

* [markdownlint-cli2](https://github.com/DavidAnson/markdownlint-cli2)
* [Rules](https://github.com/DavidAnson/markdownlint)

### Markdown Links Check
>
> CLI tool to validate all hyperlinks in markdown files.

* [markdown-link-check](https://github.com/tcort/markdown-link-check)

### Markdown Examples

* [lorem-markdownum](https://jaspervdj.be/lorem-markdownum/)

<!-- LICENSE -->

## License

Copyright (C) 2024 Jefferson Johannes Roth Filho. See `LICENSE` for more information.

<!-- CONTACT -->

## Contact

Jefferson Roth - <jjrothfilho@gmail.com>

Project Link: [https://hub.docker.com/r/jeffroth/mdbook-environment-dev](https://hub.docker.com/r/jeffroth/mdbook-environment-dev)
