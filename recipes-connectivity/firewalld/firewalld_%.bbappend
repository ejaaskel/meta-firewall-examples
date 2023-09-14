FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += "\
    file://0001-Change-the-default-zone.patch \
    file://example_service.xml \
    file://example_zone.xml \
"

do_install:append() {
    install -m 644 ${WORKDIR}/example_service.xml ${D}${sysconfdir}/firewalld/services/
    install -m 644 ${WORKDIR}/example_zone.xml    ${D}${sysconfdir}/firewalld/zones/
}
