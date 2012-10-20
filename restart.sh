#!/usr/bin/env bash

ghc --make hakyll.hs
./hakyll rebuild
./hakyll preview
