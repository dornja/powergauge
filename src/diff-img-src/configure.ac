AC_INIT([diff-img], [0.1], [dornja@gmail.com])
AC_CONFIG_SRCDIR([diff-img.cpp])
AC_CONFIG_HEADERS([config.h])
: ${CXXFLAGS="-O3"}

AC_CANONICAL_BUILD
AC_CANONICAL_HOST

AC_PROG_INSTALL
AC_PROG_CXX
AC_LANG(C++)

# JD_SEARCH_LIB_HEADER flag-name long-name header function libs extra-libs
AC_DEFUN([JD_SEARCH_LIB_HEADER],
  [AC_ARG_WITH([$1],
    [AS_HELP_STRING([--with-$1], [Look for $2 headers and libraries in directory])],
    [AS_IF([test "X$with_$1" != "Xno"],
      [$1_include_dir="$withval/include" $1_library_dir="$withval/lib"])])]
  [AC_ARG_WITH([$1-includes],
    [AS_HELP_STRING([--with-$1-includes], [Look for $2 headers in directory])],
    [AS_IF([test "X$with_$1_includes" != "Xno"],
      [$1_include_dir="$withval"],
      [with_$1=no])])]
  [AC_ARG_WITH([$1-libs],
    [AS_HELP_STRING([--with-$1-libs], [Look for $2 libraries in directory])],
    [AS_IF([test "X$with_$1_libs" != "Xno"],
      [$1_library_dir="$withval"],
      [with_$1=no])])]
  [AS_IF([test "X$with_$1" != "Xno"],
    [AC_MSG_NOTICE([===== checking for $2 libraries =====])
     AS_IF([test "X$$1_library_dir" != "X" ],
      [jd_func_search_save_LDFLAGS="$LDFLAGS"
       LDFLAGS="-L$$1_library_dir $LDFLAGS"
       AC_SEARCH_LIBS([$4], [$5],
        [LIBS="$6 -l$ac_lib $ac_func_search_save_LIBS"],
        [LIBS="$jd_func_search_save_LIBS"
         LDFLAGS="$jd_func_search_save_LDFLAGS"
         with_$1=no],
        [$6])],
      [AC_SEARCH_LIBS([$4], [$5],
        [LIBS="$6 -l$ac_lib $ac_func_search_save_LIBS"], [with_$1=no], [$6])])])]
  [AS_IF([test "X$with_$1" != "Xno"],
    [AC_MSG_NOTICE([===== checking for $2 headers =====])
     AS_IF([test "X$$1_include_dir" != "X"],
     [jd_func_check_save_CPPFLAGS="$CPPFLAGS"
      CPPFLAGS="$CPPFLAGS -I$$1_include_dir"
      AC_CHECK_HEADER([$3], [],
       [CPPFLAGS="$jd_func_check_save_CPPFLAGS"
        with_$1=no])],
      [AC_CHECK_HEADER([$3], [], [with_$1=no])])])])

JD_SEARCH_LIB_HEADER([jpeg], [jpeg], [jpeglib.h], [jpeg_read_header], [jpeg])
JD_SEARCH_LIB_HEADER([openexr], [OpenEXR], [ImfRgbaFile.h], [Imf_2_2::globalThreadCount], [IlmImf])
JD_SEARCH_LIB_HEADER([png], [png], [png.h], [png_sig_cmp], [png])
JD_SEARCH_LIB_HEADER([tiff], [tiff], [tiffio.h], [TIFFOpen], [tiff])
JD_SEARCH_LIB_HEADER([x], [X11], [X11/Xlib.h], [XOpenDisplay], [X11], [-lpthread])

AS_IF([test "X$with_jpeg" != "Xno"],
  [AC_DEFINE([cimg_use_jpeg], [1], [Configure LibJPEG support])])
AS_IF([test "X$with_openexr" != "Xno"],
  [AC_DEFINE([cimg_use_openexr], [1], [Configure OpenEXR support])])
AS_IF([test "X$with_png" != "Xno"],
  [AC_DEFINE([cimg_use_png], [1], [Configure LibPNG support])])
AS_IF([test "X$with_tiff" != "Xno"],
  [AC_DEFINE([cimg_use_tiff], [1], [Configure LibTIFF support])])
AS_IF([test "X$with_x" == "Xno"],
  [AC_DEFINE([cimg_display], [0], [Configure display framework])],
  [AC_DEFINE([cimg_display], [1], [Configure display framework])])

AC_SUBST([CPPFLAGS])
AC_SUBST([CXXFLAGS])
AC_SUBST([LDFLAGS])
AC_SUBST([LIBS])
AC_CONFIG_FILES([Makefile])
AC_OUTPUT
