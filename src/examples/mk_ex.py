#!/bin/python3

import os 
for i in range(44, 50):
    os.system(f"cp -r 00-template {i:02d}-xxx")
