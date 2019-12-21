FROM caf_rover_base

RUN git clone https://github.com/ssmbcloud-ops/landingzones.git /tf/landingzones
RUN git clone https://github.com/ssmbcloud-ops/level0.git /tf/level0

ENTRYPOINT [ "./launchpad.sh" ]
