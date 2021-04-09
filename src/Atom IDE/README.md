# Atom-Plugins-and-Snippets
My current packages 'n themes plus my personal Atom snippets for, HTML, CSS, JS, PHP, Shell Scripts, etc.

### Auto completion setup
For your python environment run:
<br/>
<code>
python -m pip install jedi 'python-language-server[all]'
</code>

For Atom, install this package: https://atom.io/packages/autocomplete-python

### To Find Or Install The Snippets
Look in "${HOME}"/.atom/snippets.cson

### To Generate Package List

<code>apm list --installed --bare > package-list.txt</code>

### To Install Package List

<code>apm install --packages-file package-list.txt</code>
