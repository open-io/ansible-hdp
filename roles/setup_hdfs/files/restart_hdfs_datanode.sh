#!/bin/bash

hdfs --daemon stop datanode && hdfs --daemon start datanode
