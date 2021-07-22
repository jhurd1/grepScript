#!/bin/bash
awk '{sub("\r$",""); print } ' grep.sh > grep2.sh; mv grep2.sh grep.sh