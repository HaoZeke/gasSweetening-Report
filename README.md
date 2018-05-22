# Gas Sweetening Project [![Donate](https://img.shields.io/badge/Donate-PayPal-blue.svg?style=for-the-badge)](https://www.paypal.me/HaoZeke/)

This is a complete, reproducible project I carried out with a group of
classmates towards the completion of my bachelors degree in chemical engineering
at HBTU, Kanpur.

Later the code should be in a repo of its own too.

## Usage

Ideally the workflow requires:

* [virtualenvwrapper](https://virtualenvwrapper.readthedocs.io/en/latest/) 
* [direnv](https://direnv.net/)
* [pipenv](https://docs.pipenv.org/)
* [pandoc](http://pandoc.org/)
* [tup](http://gittup.org/tup/)
* [tmux](https://github.com/tmux/tmux/wiki)

For an automated workflow do ensure that you allow direnv and setup the python
setup like so:

``` bash
# Get pipenv
$ pip install pipenv
# Get pipenv to create the virtualenv
$ pipenv install
# Allow direnv to automatically set the environment
$ direnv allow
```

Also set `.direnvrc` correctly to use `virtualenvwrapper` as given on [the `direnv` wiki](https://github.com/direnv/direnv/wiki/Python#-virtualenvwrapper).

On a side note I suggest the following:

* [Spacemacs](http://spacemacs.org/)
* [Zathura](https://pwmt.org/projects/zathura/) (with the [MuPDF backend](https://pwmt.org/projects/zathura-pdf-mupdf/))
* [My Dotfiles](https://github.com/HaoZeke/Dotfiles)

### Report Compilation 

The following commands should clarify this:

``` bash
# Once in the appropriate virtualenv
$ pip install -r requirements.txt
$ cd report
# Split window via tmux or open another terminal
$ tup monitor -a -f
$ latexmk -pvc tex/output.tex -r .latexmkrc -outdir=pdf/
```

## Technology

* The report is generated with a tup based  [goYoda](https://github.com/HaoZeke/goYoda) prototype
* There might be a gatsby site eventually
* COMSOL was used for the mass and energy balances
* R was used for the statistical portions


## Acknowledgments

Every contributor and member of the tech stack. For more details read the
report.

The code was adapted from the excellent work by [Kayode Coker](https://archive.org/details/CokerK.1995FortranProgramsForChemicalProcessDesignAnalysisAndSimulation)

## Credits

* The code inputs and much of the calculations were done by @shaivyaR.
* The initial outline and some calculations were done by Aditya Singh.

## Licenses

The work is derived with attribution to the users.

Additionally, the images of people are **not open source**.

Content is licensed under The Artistic License 2.0.
