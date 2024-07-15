# DSLC Web APIs with R Book Club

Welcome to the DSLC Web APIs with R Book Club!

*I'm including the standard text below from our other clubs for easier editing later, but this one is different!*
*I'm actively writing this book, and gathering feedback as I go.*
*I'm using this repository to test out some ideas.*

We are working together to read [_Web APIs with R_](https://wapir.io/) by Jon Harmon (copyright 2024).

Join the [#book_club-wapir](https://dslcio.slack.com/archives/C05MYSD1PEV) channel on the [DSLC Slack](https://dslc.io/join) to participate.
As we read, we are producing [slides for the book](https://dslc.io/wapir).

## Meeting Schedule

- Cohort 1 (started 2024-01-17, finished 2024-06-19): [meeting videos](https://www.youtube.com/playlist?list=PL3x6DOfs2NGg-zPCeSCSp7tkkQBZNLDzv)

<hr>


## How to Present

This repository is structured as a [{bookdown}](https://CRAN.R-project.org/package=bookdown) site.
To present, follow these instructions:

Do these steps once:

1. [Setup Git and GitHub to work with RStudio](https://github.com/r4ds/bookclub-setup) (click through for detailed, step-by-step instructions; I recommend checking this out even if you're pretty sure you're all set).
2. `usethis::create_from_github("dslc/club-wapir")` (cleanly creates your own copy of this repository).

Do these steps each time you present another chapter:

1. Open your project for this book.
2. `usethis::pr_init("my-chapter")` (creates a branch for your work, to avoid confusion, making sure that you have the latest changes from other contributors; replace `my-chapter` with a descriptive name, ideally).
3. `devtools::install_dev_deps()` (installs any packages used by the book that you don't already have installed).
4. Edit the appropriate chapter file, if necessary. Use `##` to indicate new slides (new sections).
5. If you use any packages that are not already in the `DESCRIPTION`, add them. You can use `usethis::use_package("myCoolPackage")` to add them quickly!
6. Build the book! ctrl-shift-b (or command-shift-b) will render the full book, or ctrl-shift-k (command-shift-k) to render just your slide. Please do this to make sure it works before you push your changes up to the main repo!
7. Commit your changes (either through the command line or using Rstudio's Git tab).
8. `usethis::pr_push()` (pushes the changes up to github, and opens a "pull request" (PR) to let us know your work is ready).
9. (If we request changes, make them)
10. When your PR has been accepted ("merged"), `usethis::pr_finish()` to close out your branch and prepare your local repository for future work.
11. Now that your local copy is up-to-date with the main repo, you need to update your remote fork. Run `gert::git_push("origin")` or click the `Push` button on the `Git` tab of Rstudio.

When your PR is checked into the main branch, the bookdown site will rebuild, adding your slides to [this site](https://dslc.io/wapir).


## Code of Conduct

Please note that the club-wapir project is released with a [Contributor Code of Conduct](https://contributor-covenant.org/version/2/1/CODE_OF_CONDUCT.html). By contributing to this project, you agree to abide by its terms.
