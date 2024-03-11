SUMMARY = "yadro-hello program"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
SRC_URI = "file://yadro-hello.c"

S = "${WORKDIR}/build"

do_compile() {
    ${CC} ${CFLAGS} ${LDFLAGS} ${WORKDIR}/yadro-hello.c -o ${C}yadro-hello
}

do_install() {
    install -d ${D}${bindir}
    install -m 0755 ${S}/yadro-hello ${D}${bindir}
}
