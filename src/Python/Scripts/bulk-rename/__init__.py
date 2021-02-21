# Python Imports
import os
import sys

# Lib Imports
import typer


# Application Imports


app = typer.Typer()


@app.command()
def makeTitleCase(file: str):
    if os.path.isdir(file) :
        for f in os.listdir(file):
            os.rename(f, f.title())
    else:
        os.rename(file, file.title())


@app.command()
def removeFromName(fsub: str, file: str):
    if os.path.isdir(file) :
        for f in os.listdir(file):
            os.rename(f, f.replace(fsub, ''))
    else:
        os.rename(file, file.replace(fsub, ''))

@app.command()
def removeFromToName(fsub: str, tsub: str, file: str):
    if os.path.isdir(file) :
        for f in os.listdir(file):
            startIndex = f.index(fsub) + 1
            endIndex   = f.index(tsub)
            toRemove   = f[startIndex:endIndex]
            os.rename(f, f.replace(toRemove, ''))
    else:
            startIndex = file.index(fsub) + 1
            endIndex   = file.index(tsub)
            toRemove   = file[startIndex:endIndex]
            os.rename(file, file.replace(toRemove, ''))


@app.command()
def replaceInName(fsub: str, tsub: str, file: str):
    if os.path.isdir(file) :
        for f in os.listdir(file):
            os.rename(f, f.replace(fsub, tsub))
    else:
        os.rename(file, file.replace(fsub, tsub))
