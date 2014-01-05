#!/usr/bin/env bash

ghc --make hakyll.hs
./hakyll clean
./hakyll rebuild
./hakyll preview
