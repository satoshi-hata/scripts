# !/bin/bash

## テスト用logの削除と再作成

cd /home/visual-hata/davr/logs/davr/gree/zend/
rm -rf zend.log
rm -rf exception.log

touch zend.log
chmod 777 zend.log

touch exception.log
chmod 777 exception.log

