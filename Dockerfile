FROM ttbb/base

WORKDIR /opt/sh

RUN wget --no-check-certificate https://oss-cdn.nebula-graph.com.cn/package/3.1.0/nebula-graph-3.1.0.el8.x86_64.rpm  && \
mkdir -p /opt/sh/nebulagraph && \
rpm -ivh nebula-graph-3.1.0.el8.x86_64.rpm && \
rm -rf nebula-graph-3.1.0.el8.x86_64.rpm && \
echo "end"

ENV NEBULAGRAPH_HOME /opt/sh/nebulagraph

WORKDIR /opt/sh/nebulagraph
