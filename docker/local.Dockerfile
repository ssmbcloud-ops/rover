FROM caf_rover_base

COPY level0 /tf/level0
COPY landingzones /tf/landingzones
COPY blueprints /tf/blueprints

ENTRYPOINT [ "./launchpad.sh" ]