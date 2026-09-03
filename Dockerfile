ARG PARENT_IMAGE=cirss/spec-tro-checks-parent:latest

FROM ${PARENT_IMAGE}

ADD ${REPRO_DIST}/boot-setup /repro/dist/

RUN bash /repro/dist/boot-setup

USER repro

RUN repro.require tro-checks main ${CIRSS} --report

RUN repro.require ai-coding-dev main ${CIRSS} --report

CMD  /bin/bash -il
