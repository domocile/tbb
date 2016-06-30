pkg_origin='domocile'
pkg_name='tbb'
pkg_distname=$pkg_name
pkg_version='4.4.5'
pkg_dirname="${pkg_distname}44_20160526oss" #wut?
pkg_maintainer="Brandon Raabe <brandocorp@gmail.com>"
pkg_license=('GPLv2')                                                                           # wut^2
pkg_source=https://www.threadingbuildingblocks.org/sites/default/files/software_releases/source/tbb44_20160526oss_src_0.tgz
pkg_shasum='7bafdcc3bca3aa1acc03da4735aefd6a4ddf2eceec983202319d0a911da1f0d1'
pkg_deps=()
pkg_build_deps=(
  core/make
  core/coreutils
  core/gcc
)
pkg_include_dirs=(include)
pkg_lib_dirs=(lib)

do_build() {
  make
}

do_install() {
  mkdir -p $pkg_prefix/include $pkg_prefix/lib
  cp -r include/* $pkg_prefix/include
  cp -r build/*_release/* $pkg_prefix/lib
}
