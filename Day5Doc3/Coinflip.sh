#!/bin/bash -x

coinflip=$((RANDOM%2))

if (($coinflip==1))
		  then
		  echo "heads"
		  else
		  echo "tails"
		  fi
