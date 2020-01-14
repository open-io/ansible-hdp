#!/bin/bash

hdfs --daemon stop namenode && hdfs --daemon start namenode
