#!/usr/bin/sh

PACKAGE_PREFIX="{{ cookiecutter.project_slug }}"
PACKAGE_EXTENSION=".deb"

BUILD_DIR="{{ cookiecutter.project_slug }}b"
DEBIAN_BUILD_DIR=${BUILD_DIR}"/DEBIAN"

usage() {
  cat <<-EOF
  Example: ./make_binary -v 013
  Usage: make_binary [options]
  Options:
    -v,          specify binary version
    -h,          print this message
EOF
exit
}

build() {
    echo "Building package ${package_name}..."
    rm -rf ${BUILD_DIR} build/ dist/ && mkdir -p ${DEBIAN_BUILD_DIR}
    pyinstaller app.py -n ${PACKAGE_PREFIX} --add-data ${PACKAGE_PREFIX}:${PACKAGE_PREFIX} -F
    mkdir -p ${BUILD_DIR}/usr/bin && cp -r dist/* ${BUILD_DIR}/usr/bin && cp control ${DEBIAN_BUILD_DIR}/
    dpkg-deb -b ${BUILD_DIR} ${package_name}
    echo "Removing garbage..."
    rm -rf ${BUILD_DIR} build/ dist/
    echo "Done."
}

run() {
  package_name="${PACKAGE_PREFIX}-${version}${PACKAGE_EXTENSION}"
  build ${package_name}
  exit
}

while getopts ":hv:" option; do
   case ${option} in
      h) # display usage
         usage;;
      \?) # incorrect option
         echo "Error: Invalid option"
         usage;;
      v) # specify version for build
      version=$2; shift
        run ${version}
   esac
done

usage
