@echo off
::Silakan rubah lokasi executable BIN sesuai instalasi Apache pada sistem komputer Anda
set lokasi_apache=C:\xampp\apache\bin

::Silakan rubah lokasi direktori DATA sesuai instalasi MySQL pada sistem komputer Anda
set lokasi_mysql_data=C:\xampp\mysql\data

::Silakan rubah menjadi nama Anda atau nama komputer Anda (opsional)
set pembuat_script=MRHPx aka Rizal / mrhpx at yahoo dot com

echo #################################################################
echo #                                                               #
echo # %pembuat_script%                      #
echo # Mulai menghentikan MySQL, silakan tunggu                       #
echo # Nama file *.PID MySQL adalah %computername%.pid #
echo # Mohon jangan tutup jendela ini                                #
echo #                                                               #
echo #################################################################


%lokasi_apache%\pv.exe -f -k mysqld.exe -q
pause

cls
echo #################################################################
echo #                                                               #
echo # MySQL berhasil dihentikan                                     #
echo #                                                               #
echo #################################################################
pause

if not exist %lokasi_mysql_data%\%computername%.pid GOTO keluar
del %lokasi_mysql_data%\%computername%.pid


:keluar
