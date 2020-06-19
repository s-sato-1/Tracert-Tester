@echo off

rem // Destination
set DST=www.yahoo.co.jp

rem // logフォルダがなかったら作成する
If not exist log mkdir log

rem // 無限ループする
:loop
  rem // 現在時刻を取得する
  set time_tmp=%time: =0%
  set now=%date:/=%%time_tmp:~0,2%%time_tmp:~3,2%%time_tmp:~6,2%
  
  rem // tracertログを取得する
  echo Status:tracerting
  tracert %DST% > log\log_%now%.txt
  
  rem // 60秒sleepする
  timeout 60
  echo Status:awaked
goto loop

