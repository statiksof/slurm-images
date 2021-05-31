FROM centos:7

RUN yum update -y && yum clean all

RUN yum install -y rpm-build \
                   gcc gcc-c++ \
                   libtool libtool-ltdl \
                   pkgconfig \
                   sudo \
                   automake autoconf \
                   yum-utils \
                   epel-release \
                   git \
                   && \
    yum clean all

RUN yum update -y && yum clean all

RUN yum install -y openssl openssl-devel \
                    pam-devel \
                    numactl numactl-devel \
                    hwloc hwloc-devel \
                    lua lua-devel readline-devel \
                    rrdtool-devel \
                    ncurses-devel \
                    man2html \
                    libibmad libibumad \
                    perl-ExtUtils-MakeMaker \
                    munge munge-libs munge-devel \
                    mysql-devel \
                    libcurl-devel \
                    && \
    yum clean all

