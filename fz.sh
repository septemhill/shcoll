#!/bin/bash

du -hd1 | sed '$d' | sort -h

