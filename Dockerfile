ARG PARENT_IMAGE=cirss/spec-tro-checks-parent:latest

FROM ${PARENT_IMAGE}

ADD ${REPRO_DIST}/boot-setup /repro/dist/

RUN bash /repro/dist/boot-setup

USER repro

ENV TRACE 'https://raw.githubusercontent.com/transparency-certified/${1}/${2}/exports'

RUN repro.require tro-checks main ${TRACE} --report

RUN repro.require ai-coding-dev main ${CIRSS} --report

CMD  /bin/bash -il
