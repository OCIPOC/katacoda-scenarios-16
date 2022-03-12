1. Install requirements

`python3 -mpip install --user -r ./requirements.in`{{execute}}

`python3 -mpip install --user -r ./requirements-caffe2.in`{{execute}}

2. Install models

`./downloader.py -h`{{execute}}

`./downloader.py --name human-pose-estimation-0001`{{execute}}

`./downloader.py --name text-detection-0004 --precisions FP16`{{execute}}

`./downloader.py --name vehicle-attributes-recognition-barrier-0039 --precisions INT8`{{execute}}


