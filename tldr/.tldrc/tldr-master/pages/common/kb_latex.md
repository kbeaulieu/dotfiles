# Latex

- Full installation (~2go):
`brew cask install mactex`

- Full installation without bundled applications
`brew cask install mactex-no-gui`

- Minimal installation (~100mb)
`brew cask install basictex`

- Installing packages (https://www.ctan.org/pkg)
`sudo tlmgr update --self`
`sudo tlmgr instal [packageName]`

- Build PDF
`pdflatex file.tex`

- For Other file format see
`pandoc`
