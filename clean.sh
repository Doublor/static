#!/bin/bash
git filter-branch --force --index-filter 'git rm --cached --ignore-unmatch Linux_1_常用命令.jpg' --prune-empty --tag-name-filter cat -- --all
git filter-branch --force --index-filter 'git rm --cached --ignore-unmatch MySQL_备份.jpg' --prune-empty --tag-name-filter cat -- --all
git filter-branch --force --index-filter 'git rm --cached --ignore-unmatch MySQL_授权.jpg' --prune-empty --tag-name-filter cat -- --all
git filter-branch --force --index-filter 'git rm --cached --ignore-unmatch 域名.jpg' --prune-empty --tag-name-filter cat -- --all
git filter-branch --force --index-filter 'git rm --cached --ignore-unmatch linux_目录.jpg' --prune-empty --tag-name-filter cat -- --all

#上面的索引删除了之后需要执行强制推送
#git push origin wp --force