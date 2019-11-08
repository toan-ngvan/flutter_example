#!/bin/bash -eo pipefail

flutter analyze > flutter_analyze_report.txt

echo 'Check completed'
