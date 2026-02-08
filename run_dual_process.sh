#!/bin/bash

pipe=klein # sana #schnell
vlm=idefics2
dataset=demo1
save_folder=runs/${pipe}_${vlm}
# python3 script_dual_process.py configs/base.yaml,configs/pipe/${pipe}.yaml,configs/vlm/${vlm}.yaml,configs/dataset/${dataset}.yaml save_folder=${save_folder}


dataset=demo2
python3 script_dual_process.py configs/base.yaml,configs/pipe/${pipe}.yaml,configs/vlm/${vlm}.yaml,configs/dataset/${dataset}.yaml save_folder=${save_folder}

dataset=demo3
python3 script_dual_process.py configs/base.yaml,configs/pipe/${pipe}.yaml,configs/vlm/${vlm}.yaml,configs/dataset/${dataset}.yaml save_folder=${save_folder}