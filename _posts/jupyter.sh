#!/bin/bash/

# ./jupyter.sh notebook.ipynb
# https://chukycheese.github.io/translation/github/jupyter%20notebook/post-jupyter-notebooks-to-your-github-blog/
# https://zzsza.github.io/development/2018/08/15/jupyter-notebook-in-jekyll/

export PATH=~/anaconda3/bin:$PATH

FILE_NAME=$1
FILE_BASE=`basename $FILE_NAME .ipynb`

POST_NAME="${FILE_BASE}.md"
POST_DATE_NAME=`date "+%Y-%m-%d-"`${POST_NAME}
echo "File Name : " ${FILE_NAME}
echo "Post Name : " ${POST_DATE_NAME}


function converter(){
    # convert the notebook
    # https://github.com/airbnb/knowledge-repo/issues/590
    # https://jungsooyun.github.io/notebook/post-with-jupyter/
    jupyter nbconvert --to markdown --template jekyll.tpl $FILE_NAME

    # move
    mv $FILE_NAME "ipynb_folder"
    mv $POST_NAME $POST_DATE_NAME

}
converter