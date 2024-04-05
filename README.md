# brew-xz-patcher
A bash script to update xz when installed with brew

### Pragmatic countermeasure against CVE-2024-3094
By updating (actually it is rather downgrading) xz, the backdoor is reportedly gone.
**NOTE**: This script updates xz no matter the version.

### Run with your MDM or as a standalone script
This script will probably run just fine with your MDM solution as long as it is capable of running bash scripts (tested with Jamf Pro).
