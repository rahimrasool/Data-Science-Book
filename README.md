## Data Science Book

#### File Structure:
All the content in form of interactive python notebooks and markdowns should be in the ds_content folder. A new notebook added to the content folder can be added to the data science book and content list by editing the file _toc.yml in a text editor. Just place the file name in the correct order in _toc.yml

#### Editing the book:

In order to edit the notebooks in the book, perform the following set of steps.

1. Clone the github repository rahimrasool/dsbook_test using the following code:
```
$ git clone https://github.com/rahimrasool/dsbook_test.git
```
OR
```
$ git clone git@github.com:rahimrasool/dsbook_test.git
```

If you've already performed this step before, make sure to pull any changes by other team members.


2. Build the docker image by runing this command on your terminal inside the root folder of the repo:
```
$ make docker-build
```

This command will enable you to build a docker container (an isolated computer for you) to run jupyter notebook and edit your files. You can also create new notebooks in the Jupyter Hub

Note: To edit an existing notebook, make sure that the notebook is copied to the ds_content directory before starting step 2.

3. Run the docker container built in step 2 by running the following command on your terminal:
```
$ make docker-run-jupyter
```
This will open give you a link to the jupyter hub. Copy it and paste it on the browser to access the jupyter hub.

4. After making all the edits, build the jupyter book for publishing the notebooks using the following command on your terminal (make sure to run this on the root folder of the repository directory):
```
$ jupyter-book build ds_content
```

5. Once you're done with all the changes, push the changes to the main branch of the github repo by:
```
$ git add .
$ git commit -m "Commit comment"
$ git push -u origin main
```

6. Publish changes to the website using:
```
$ ghp ghp-import -n -p -f ds_content/_build/html
```

7. Exit docker enviroment by typing exit on your terminal.

