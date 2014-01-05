{-# LANGUAGE OverloadedStrings #-}

import Hakyll

main :: IO ()
main = hakyll $ do
  match "images/*" $ do
    route   idRoute
    compile copyFileCompiler 

  match "css/*" $ do
    route   idRoute
    compile compressCssCompiler
    
  match "templates/*" $ do
    compile templateCompiler
    
  match "pages/*" $ do
    route $ gsubRoute "pages/" (const "") `composeRoutes` setExtension "html"
    compile $ pandocCompiler
      >>= loadAndApplyTemplate "templates/layout.html" defaultContext
      >>= relativizeUrls

  match "index.html" $ do
    route   idRoute
    compile $ pandocCompiler
      >>= loadAndApplyTemplate "templates/layout.html" defaultContext
      >>= relativizeUrls
