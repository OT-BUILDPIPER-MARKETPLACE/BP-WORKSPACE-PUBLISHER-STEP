# BP-WORKSPACE-PUBLISHER-STEP
I'll publish files to workspace so that they can be visible


## Setup
* Clone the code available at [BP-WORKSPACE-PUBLISHER-STEP](https://github.com/OT-BUILDPIPER-MARKETPLACE/BP-WORKSPACE-PUBLISHER-STEP)
* Build the docker image

```
git submodule init
git submodule update
docker build -t ot/workspace-publisher:0.1 .
```