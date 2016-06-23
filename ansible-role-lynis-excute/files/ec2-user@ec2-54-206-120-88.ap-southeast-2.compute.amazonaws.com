#!/bin/bash
cd /opt/lynis;./lynis -Q
