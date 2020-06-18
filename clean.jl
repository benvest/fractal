# Clears out any files there end up on this directory, it might be an (even) better idea to make a directory
# for output, but then again not sure if that is better than this. Maybe a directory for stuff I want to keep.

foreach(filetype ->
    foreach(
        Base.Filesystem.rm,
        filter(file -> splitext(file)[2]==".$filetype", readdir())
    ),
    ["png", "svg", "pdf"] # add others here if they start being used
)

Base.Filesystem.rm(".DS_Store") # just cause this bugs me... wtf is a ds store anyway
