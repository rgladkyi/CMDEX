@echo off

call pwd_save

if [%1]==[] (cd) else (cd /d %*)


