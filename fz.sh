#!/bin/bash

du -hd1 $1 2>/dev/null | sed '$d' | sort -h

