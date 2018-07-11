define pwngdb
source ~/repo/Pwngdb/pwngdb.py
source ~/repo/Pwngdb/angelheap/gdbinit.py
python
import angelheap
angelheap.init_angelheap()
end
end

define peda
  source ~/repo/peda/peda.py
# turn off logging in peda
  pset option autosave off
end

set sysroot
set auto-load off

# skip a message when you quit
set confirm off
