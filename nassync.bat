@REM Quick simple script that will sync a source folder to any destination folder / Christos Kokkalis 2018

@echo off

echo:

echo: Syncs local copy of Google Drive to USB drive on router (NAS)

echo: -------------------------------------------------------------

echo: Local GDrive sync to NAS started...

echo:

echo BEGIN SYNC %date% %TIME% >> "d:\NASSync\nassync.log" 2>&1

SET dest=\\KOKKALISHOME\KokkNAS\GoogleSync
@rem Mounts network drive

PUSHD %dest% >> "d:\NASSync\nassync.log" 2>&1

xcopy D:\GoogleSync %CD% /E /C /H /R /D /Y | tee -a "d:\NASSync\nassync.log" 2>&1

POPD >> "d:\NASSync\nassync.log" 2>&1
@rem Removes network drive

echo:

echo: Local sync to NAS complete, exit the app.

echo END SYNC %date% %TIME% >> "d:\NASSync\nassync.log" 2>&1

echo:

@rem ref. this link for info about this sync process:
@rem https://billing.holodyn.com/knowledgebase/24/Using-XCOPY-to-Synchronize-Folders.html
