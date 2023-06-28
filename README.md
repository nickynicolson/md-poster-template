# md-poster-template
Template repo to build a latex beamerposter from content authored in markdown

## How to use

### Setting up your project

This github repository is set up as a template - you can base your own poster project on it by clicking the <kbd>Use this template</kbd> button in the top right of the github web user interface.

### Specifying your poster metadata and content

#### Metadata - title, authorship etc

Edit the `poster-metadata.tex` file. You can modify the title, conference, authors and affiliations.

#### Institutional logos

Two example logos are provided, as `institutional_logo_1.png` and `institutional_logo_1.png`. They are referenced in the poster setup in `beamerthemesharelatex.sty` on line numbers 109 and 126. 

#### Specifying your poster content

You can write your poster content in markdown in `poster-content.md`. This markdown file includes some fenced latex blocks to include figure images and to specify the division of the text into the three column layout used in the poster. Rearrange these elements as required.

#### Including figures

Upload the figure image file to your github repository and reference in `poster-content.md` using the example `figure_1.png`

#### Including references

Bibliographic reference metadata is included in the file `refs.bib`. Citations are made in the text using the reference key, see eg the end of the first paragraph in the introduction in `poster-content.md`

### Compiling your poster

#### Using github actions

The repository is set up to use github actions so you can do the compilation completely online without installing latex & associated tools locally. 
Click on the `actions` tab in your repository then click on the action name <kbd>Compile poster to PDF</kbd>. Click the `Run workflow` dropdwn then on the green "Run workflow" button. This wil start the compilation process, and the PDF version of the poster will be attaced to the workflow run as a build artifact.

#### Building on your local machine

You'll need the following tools installed & configured locally: make (to manage the build process), pandoc (to manage the conversion of the poster content from markdown to latex) and a latex environment (eg miktex on windows). With these tools available you can clone the repository and execute `make poster`. Your poster PDF should be built and be made available in the `build` subdirectory. 

## How to contribute

Open an issue at: https://github.com/nickynicolson/md-poster-template/issues