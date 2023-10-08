find ~/ -name "crash.in" -print0 | xargs -0 sed -i 's/crash/broken/g'
