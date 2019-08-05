define peda
  source ~/repo/peda/peda.py
# turn off logging in peda
  pset option autosave off
end

define pwn
  source ~/repo/pwndbg/gdbinit.py
end

define gef
  source ~/repo/gef/gef.py
end

set sysroot
set auto-load off

# skip confirmation when you quit
set confirm off
