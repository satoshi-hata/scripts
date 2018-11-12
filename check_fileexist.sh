# !/bin/bash

##
## 指定したリストのファイルが存在するかチェックするスクリプト 
##

# 対象となるフォルダ(root)
REPO_DIR=/home/sy/develop/davr-img

# 存在確認するファイルを記述したリストファイル
## REPO_DIRに対する相対パスを指定する。行頭に/は不要。
LISTFILE=/home/visual-hata/scripts/gvg_image_file_list.txt

# 結果出力ファイル
OUTFILE=/home/visual-hata/scripts/test.log


if [ ! -e $REPO_DIR ]; then
	echo "REPO_DIR({$REPO_DIR})が存在しません"
	exit 1
fi

cd $REPO_DIR

numLine=1
cat $LISTFILE | while read line
do
	# ファイルの存在確認
	if [ -f $line ]; then
		echo "{$line}	OK" >> $OUTFILE
	else
		echo "{$line}	NG" >> $OUTFILE
	fi

done




