# From Simple to Olympiad: Algorithms and Programming in Python

A book for kids learning competitive programming, covering everything from basic array operations to graph algorithms, dynamic programming, and combinatorics.

> **[Read the book online](https://a-sinkevich.github.io/simple-to-olympiad-python-book/)** — HTML version auto-published on every commit.

> **Status: Work in Progress**
> This book was auto-translated from Russian and auto-converted from Pascal to Python. While the overall structure and content are in place, there is still a lot of work to do:
> - Code examples need to be verified and tested
> - Additional practice problems with automated tests are planned
> - Some tables and formatting are broken and need manual cleanup
> - Mathematical notation may need review in places
>
> Contributions and corrections are very welcome!

## About this project

This is a modern adaptation of the Russian textbook:

> **«Алгоритмизация и программирование на Turbo Pascal: от простых до олимпиадных задач»**
> *(Algorithmization and Programming in Turbo Pascal: from Simple to Olympiad Problems)*
>
> by **М.С. Долинский (M.S. Dolinsky)**, published by Piter, 2005

The original book has been a trusted resource for teaching competitive programming to schoolchildren in Belarus and beyond, producing multiple IOI medalists. This adaptation:

- Translates the full text from Russian to English
- Converts all code from Turbo Pascal to idiomatic **Python 3** with type hints
- Rewrites Pascal-specific sections (pointers, dynamic memory) using Python classes and data structures
- Preserves the original pedagogical approach and problem progression

## Contents

| Chapter | Topic |
|---------|-------|
| 1.1 | Basic constructs and simplest algorithms |
| 1.2 | Python language features |
| 1.3 | Program development methodology |
| 2.1 | Queue and Stack |
| 2.2 | Recursive Functions |
| 2.3 | Recurrence Relations & Dynamic Programming |
| 2.4 | Graph Algorithms (DFS, BFS, shortest paths) |
| 2.5 | Generating Combinatorial Objects |
| 3.1 | Analytic Geometry on the Plane |
| 3.2 | Number Theory |

## Setup

### macOS

```bash
# Option A: Homebrew
brew install asciidoctor
gem install asciidoctor-pdf

# Option B: Ruby gems only
gem install asciidoctor asciidoctor-pdf
```

### Ubuntu / Debian

```bash
sudo apt install asciidoctor
gem install asciidoctor-pdf
```

### Fedora / RHEL

```bash
sudo dnf install asciidoctor rubygem-asciidoctor
gem install asciidoctor-pdf
```

### Windows

```powershell
# Install Ruby first via https://rubyinstaller.org
gem install asciidoctor asciidoctor-pdf
```

### Docker (any platform)

No local install needed — use the official Asciidoctor Docker image:

```bash
# HTML
docker run --rm -v $(pwd):/documents asciidoctor/docker-asciidoctor \
  asciidoctor -o build/book.html book.adoc

# PDF
docker run --rm -v $(pwd):/documents asciidoctor/docker-asciidoctor \
  asciidoctor-pdf -o build/book.pdf book.adoc
```

## Building the book

```bash
make html    # → build/book.html
make pdf     # → build/book.pdf
make clean   # remove build outputs
```

Or run the commands directly:

```bash
asciidoctor -o build/book.html book.adoc
asciidoctor-pdf -o build/book.pdf book.adoc
```

## Project structure

```
book.adoc                  # Master file — renders the full book
chapters/                  # Chapter source files (AsciiDoc)
  00-front-matter.adoc
  01-introduction.adoc
  02-ch1-1-basics.adoc
  ...
  13-index.adoc
examples/                  # Runnable Python code from the book
images/                    # Diagrams and figures
build/                     # Generated output (gitignored)
```

## Editing

Open in VS Code with the [AsciiDoc extension](https://marketplace.visualstudio.com/items?itemName=asciidoctor.asciidoctor-vscode) for live preview. Each chapter file can be edited independently — the master `book.adoc` assembles them via `include::` directives.

## Contributing

1. Fork the repo
2. Create a branch (`git checkout -b fix/chapter-2-typo`)
3. Edit the relevant file in `chapters/`
4. Build locally to verify (`make html`)
5. Commit and open a pull request

## CI/CD

Every push to `master` triggers a GitHub Actions workflow that:

1. Builds the HTML and PDF versions using the official [asciidoctor/docker-asciidoctor](https://github.com/asciidoctor/docker-asciidoctor) image
2. Publishes the HTML to GitHub Pages
3. Uploads both HTML and PDF as downloadable build artifacts

Pull requests get a build check but don't deploy.

> **Note:** After pushing to GitHub, enable Pages in repo settings: Settings → Pages → Source → GitHub Actions.

## Acknowledgments

All credit for the original content, problem selection, and pedagogical methodology goes to M.S. Dolinsky and the original Russian publication.
