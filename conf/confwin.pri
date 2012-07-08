win32-g++ {
  include(confwin-mingw.pri)
}else {
  include(confwin-msvc.pri)
}
