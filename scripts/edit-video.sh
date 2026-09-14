#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
# Four real-time excerpts, in source order within each grasp. No speed changes.
ffmpeg -y -hide_banner -loglevel error -i media/source/gentle-grasp.mp4 -filter_complex '[0:v]split=4[a][b][c][d];[a]trim=start=4:end=12,setpts=PTS-STARTPTS[v0];[b]trim=start=49:end=57,setpts=PTS-STARTPTS[v1];[c]trim=start=67:end=75,setpts=PTS-STARTPTS[v2];[d]trim=start=79:end=87,setpts=PTS-STARTPTS[v3];[v0][v1][v2][v3]concat=n=4:v=1:a=0,format=yuv420p[out]' -map '[out]' -an -c:v libx264 -crf 21 -preset slow -movflags +faststart public/assets/video/gentle-grasp-highlight.mp4
ffmpeg -y -hide_banner -loglevel error -i media/source/gentle-grasp.mp4 -an -c:v libx264 -crf 23 -preset slow -movflags +faststart public/assets/video/gentle-grasp-full.mp4
ffmpeg -y -hide_banner -loglevel error -ss 54 -i media/source/gentle-grasp.mp4 -frames:v 1 public/assets/video/poster.jpg
