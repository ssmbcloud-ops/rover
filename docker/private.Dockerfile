FROM caf_rover_base

RUN git clone https://github.com/ssmbcloud-ops/level0.git /tf/level0
COPY private/landingzones /tf/landingzones

ENTRYPOINT [ "./launchpad.sh" ]
