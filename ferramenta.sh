#!/bin/bash

read -p "Digite o site da vítima: " site;

mkdir $site;

host $site | grep "has address" | awk -F " " '{print $4}';

nmap $site;
