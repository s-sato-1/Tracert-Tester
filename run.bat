@echo off

rem // Destination
set DST=www.yahoo.co.jp

rem // log�t�H���_���Ȃ�������쐬����
If not exist log mkdir log

rem // �������[�v����
:loop
  rem // ���ݎ������擾����
  set time_tmp=%time: =0%
  set now=%date:/=%%time_tmp:~0,2%%time_tmp:~3,2%%time_tmp:~6,2%
  
  rem // tracert���O���擾����
  echo Status:tracerting
  tracert %DST% > log\log_%now%.txt
  
  rem // 60�bsleep����
  timeout 60
  echo Status:awaked
goto loop

