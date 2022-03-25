# minty  <span><a href="https://github.com/royfrancis/minty"><img src="reference/figures/minty.png" style="height:40px;vertical-align:middle;"></a></span>

[![ci_badge](https://github.com/royfrancis/minty/workflows/build/badge.svg)](https://github.com/royfrancis/minty/actions?workflow=build)  [![lifecycle_badge](https://lifecycle.r-lib.org/articles/figures/lifecycle-experimental.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental) 

An R package with R Markdown templates for reports/documentation and slides.

## Templates

### nbis-report

<img src="reference/figures/preview-report.png" style="width:600px;box-shadow: 1px 1px 6px #E0E0E0;">

- [Minimal preview](https://royfrancis.github.io/minty/nbis-report.html) (2.3MB)
- [Full demo](https://royfrancis.github.io/minty/nbis-report-demo.html) (15MB)

### nbis-slide

<img src="reference/figures/preview-slide.png" style="width:600px;box-shadow: 1px 1px 6px #E0E0E0;">

- [Minimal preview](https://royfrancis.github.io/minty/nbis-slide.html) (3.2MB)
- [Full demo](https://royfrancis.github.io/minty/nbis-slide-demo.html) (14MB)

## Usage
### Installation  

This package can be installed from R/RStudio as follows:

```
install.packages("remotes")
remotes::install_github("royfrancis/minty")
```

No dependency packages are required to create the template. But the following dependencies are required to render the Rmd to HTML.

```
install.packages(c("bookdown","captioner","knitr","markdown","rmarkdown","xaringan"),repos="https://cloud.r-project.org/")
```

The standard templates are to be used for preparing your own material. 

### Demo templates

The 'demo' template contains detailed examples of RMarkdown syntax, features, formatting, alignment, graphics and interactive graphics. If you plan to **render** the demo template, note that it uses several extra R packages listed below. If you just want to just **view** the rendered demo output, see Templates link above.

```
install.packages(c("dplyr", "tidyr", "stringr", "kableExtra", "formattable", "DT", "highcharter", "plotly","ggiraph", "dygraphs", "networkD3", "leaflet", "crosstalk"))
```

After installing the package, restart R/Rstudio.

### Using a Template  

#### Interactive

The templates can be accessed from within RStudio as shown below. Use this as a starting point for your own document.

`File > New File > R Markdown... > From Template > NBIS Report`

This creates a new Rmd file and assets directory in the current working directory.

#### Code

The code below creates a directory named nbis-report with nbis-report.Rmd and assets directory inside.

```
mint(template="nbis-report",path="~/Desktop")
```

The destination name can be changed. The code below creates a directory named my-report with my-report.Rmd and assets directory inside.

```
mint(template="nbis-report",path="~/Desktop",name="my-report")
```

### Rendering

Save the changes, say for example; **nbis-report.Rmd**, the document can be rendered to HTML by running the below in the document directory.

```
rmarkdown::render("nbis-report.Rmd")
```

This will create an HTML file: **nbis-report.html**. This HTML file is intended to be self-contained without any dependencies or assets. This behaviour is governed by the YAML argument `self_contained: true`. Depending on what you add to the report, this may not always work. The xaringan slides are also set to self-contained by default.

## Acknowledgements

Credit to <span><a href="https://www.freepik.com"><img src="reference/figures/freepik.png" style="height:25px;vertical-align:middle;"></a></span> and <span><a href="https://www.flaticon.com/"><img src="reference/figures/flaticon.png" style="height:20px;vertical-align:middle;"></a></span> for illustrations/graphics.

## Contact

If you have corrections, comments or suggestions, feel free to submit a report on the Github [issues](https://github.com/royfrancis/minty/issues) page.
