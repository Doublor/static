#!/bin/bash
git filter-branch --force --index-filter 'git rm --cached --ignore-unmatch logo.png' --prune-empty --tag-name-filter cat -- --all
git filter-branch --force --index-filter 'git rm --cached --ignore-unmatch logo-only.png' --prune-empty --tag-name-filter cat -- --all

#上面的索引删除了之后需要执行强制推送
#git push origin wp --force