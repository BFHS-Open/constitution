# BFHS-Open Constitution

<div align="center">
  <img src="/assets/logo.svg" alt="BFHS-Open Logo" width="50%">
</div>

---
## Table of Contents

  1. [Summary](#Summary)
  2. [Dependencies](#Dependencies)
  3. [Building](#Building)
  4. [Continous Deployment](#Continous-Deployment)
  5. [Contributing](#Contributing)
  6. [Inspiration](#Inspiration)
  7. [Contributors](#Contributors)
  8. [License](#License)

## Summary

This is the version controlled repository for Benjamin Franklin Open's constitution.

This document is built in Latex and requires dependancies described [here](#Dependencies)

To view the pre-built PDF of the constitution, check the [Github releases](../../releases), powered by Github Actions.

### Project Organization:

```shell
...
├── .github
├── README.md
├── out
│   ├── constitution.pdf
│   └── ...
├── Makefile
├── LICENSE
├── constitution.tex
├── assets
│   └── bird.png
└── articles
    ├── article-10.tex
    ├── article-09.tex
    ├── article-08.tex
    ├── article-07.tex
    ├── article-06.tex
    ├── article-05.tex
    ├── article-04.tex
    ├── article-03.tex
    ├── article-02.tex
    └── article-01.tex
```

- [**`README.md`**](/README.md)
  - The file you are currently reading.
- [**`/out`**](/out)
  - Generated by the makefile to output the Latexmk output as to not pollute the main repository directory.
- [**`Makefile`**](/Makefile)
  - `format` - Runs prettier over `/articles`, should be ran before commiting.
  - `build` - Makes `/out` directory and runs `Latexmk` to build `/out/constitution.pdf`.
  - `clean` - Removes `/out` directory and contained files.
  - `rebuild` - Cleans `/out` and runs `build`.
  - `open` - Rebuilds `/out/constitution.pdf` and opens it through `xdg-open`
- [**`LICENSE`**](/LICENSE)
  - Contains the license text for CC0.
- [**`constitution.tex`**](/constitution.tex)
  - Main latex file that calls in all the articles. Just run Latexmk on this file.
- [**`/assets`**](/assets)
  - Holds all images and other assets required for building the Latex file.
- [**`/articles`**](/articles)
  - Contains the individual articles.
- [**`/.github`**](/.github)
  - Location for github actions and pull-request/issue templates.

## Dependencies:
- [`Latexmk`](https://www.ctan.org/pkg/latexmk/)
  - Required for building the PDFs from the Latex
- [`prettier`](https://prettier.io/) & [`prettier-plugin-latex`](https://github.com/siefkenj/prettier-plugin-latex)
  - Used by `make format` to automatically format the latex in a consistant style.
- [`GNU Make`](https://www.gnu.org/software/make/) (or a compatable alternative)
- [`Texlive Latex`](https://tug.org/texlive/) & the following packages:
  - [`graphicx`](https://www.ctan.org/pkg/graphicx/)
  - [`hyperref`](https://www.ctan.org/pkg/hyperref)

## Building:

```sh
git clone https://github.com/bfhs-open/constitution
  
make build
```

Now you are able to view the PDF, found in `./out/constitution.pdf`.

## Continous Deployment:

This repository uses github actions to build new releases when a pull-request has been merged into main, thus achieving continuous deployment.

The Github Actions depend on:
- [`actions/checkout`](https://github.com/actions/checkout)
- [`marvinpinto/action-automatic-releases`](https://github.com/marvinpinto/action-automatic-releases)

You can check the status of the Github Action [here](../../actions).

## Contributing:

Follow the contributing guidelines described in Article 8 of the constitution.

## Inspiration

[UNO-Open Constitution](https://github.com/UNO-Open/owc-constitution)

[RITSEC Constitution](https://github.com/ritsec/constitution)

## Contributors

<a href="../../graphs/contributors">
  <img src="https://contrib.rocks/image?repo=bfhs-open/constitution"
</a>

## License

### License for Non-Logo

<p xmlns:dct="http://purl.org/dc/terms/">
  <a rel="license"
     href="http://creativecommons.org/publicdomain/zero/1.0/">
    <img src="http://i.creativecommons.org/p/zero/1.0/88x31.png" style="border-style: none;" alt="CC0" />
  </a>
  <br />
  To the extent possible under law,
  <span rel="dct:publisher" resource="[_:publisher]">the person who associated CC0</span>
  with this work has waived all copyright and related or neighboring
  rights to this work.
</p>

### Licensing for Logo
BFHS-Open retains all rights and does not offer a license for use of the Organization's Logo.