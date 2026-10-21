{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
-- Generated Code Do Not Modify
-- package org.allbinary.image.gui
module ImageIconUnique (module ImageIconUnique, module ImageIcon) where

import ImageIcon hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getId, getId_super, getId_impl, setId, setId_super, setId_impl, id)
import AllBinaryJava
import Data.IORef
import Data.Bits
import Data.Char
import Data.Int
import Data.Word
import Data.List
import Data.Function (fix)
import Control.Monad
import Control.Exception
import Control.Concurrent (threadDelay)
import Numeric (showHex)
import System.IO
import System.IO.Unsafe (unsafePerformIO)
import qualified GHC.Float
import qualified BufferedImage -- java.awt.image.BufferedImage
-- import javax.swing.*
import qualified ImageIcon

data ImageIconUnique = ImageIconUnique
    { header_ :: JavaHeader
    , base :: ImageIcon.ImageIcon
    , id :: IORef (Int)
    }

instance JavaNull ImageIconUnique where
    javaNull = javaNullRecord "ImageIconUnique"

instance JavaEquals ImageIconUnique where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ImageIconUnique where
    (==) = jrecordEquals

instance JavaObjectClass ImageIconUnique where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ImageIconUnique
newRecord_ = do
    base <- ImageIcon.newRecord_
    let header_ = base.header_
    id <- newIORef 0
    let this = ImageIconUnique header_ base id
    jregisterLevel header_ this
    jregisterMethod header_ "getId" (\() -> getId_impl this)
    jregisterMethod header_ "setId" (\() -> setId_impl this)
    pure this

initFields_ :: ImageIconUnique -> IO ()
initFields_ this = do
    jset this.id (0)
    pure ()

new_2 :: BufferedImage.BufferedImage -> Int -> IO ImageIconUnique
new_2 bufferedImage index = do
    this <- newRecord_
    init_2 this bufferedImage index
    pure this

init_2 :: ImageIconUnique -> BufferedImage.BufferedImage -> Int -> IO ()
init_2 this bufferedImage index = do
        ImageIcon.init_1 this.base (bufferedImage)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (ImageIconUnique.setId this index)
        pure ()


getId :: (JavaObjectClass this_) => this_ -> IO (Int)
getId object_ = jmethod object_ "getId" (\() -> (getId_impl (javaCast object_ :: ImageIconUnique))) ()

getId_super :: (JavaObjectClass this_) => this_ -> IO (Int)
getId_super object_ = (getId_impl (javaCast object_ :: ImageIconUnique))

getId_impl :: ImageIconUnique -> IO (Int)
getId_impl this = do
        pure ((jget (this).id))


setId :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setId object_ a1 = jmethod object_ "setId" (\() -> (setId_impl (javaCast object_ :: ImageIconUnique))) () a1

setId_super :: (JavaObjectClass this_) => this_ -> Int -> IO (())
setId_super object_ a1 = (setId_impl (javaCast object_ :: ImageIconUnique)) a1

setId_impl :: ImageIconUnique -> Int -> IO (())
setId_impl this id = do
        jset (this).id (id)
        pure ()


