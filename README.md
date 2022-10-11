# Exercise: building an Alpine Linux package for Transmission 4

This exercise shows how to build an alpine linux package, in this case
Transmission 4 Beta 1.


## Steps

- Create keys to sign APK packages using `abuild-keygen -a -i`
- Copied APKBUILD from existing transmission 3.x package in Alpine Linux
  3.16.
- Update APKBUILD as needed (package URLs, versions, checksums, etc.)
- Download package source using `abuild -F checksum`
- Build package using `abuild -F -r -v`


## To use

- Copy package to a web server
- Use `apk --repository <url>` when adding package.


## References

- <https://wiki.alpinelinux.org/wiki/APKBUILD_Reference>
- <https://wiki.alpinelinux.org/wiki/Abuild_and_Helpers>