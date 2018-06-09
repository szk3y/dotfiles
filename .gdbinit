define peda-x86
  source ~/repo/peda/peda.py
# turn off logging in peda
  pset option autosave off
end

define peda-arm
  source ~/repo/peda-arm/peda-arm.py
end

define pwngdb
  source ~/repo/Pwngdb/pwngdb.py
end

define x86
  peda-x86
  pwngdb
end

define arm
  peda-arm
end

set sysroot
set auto-load off

# skip a message when you quit
set confirm off
