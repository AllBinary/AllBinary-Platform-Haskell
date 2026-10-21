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
-- package org.allbinary.graphics.paint
module InitUpdatePaintable (module InitUpdatePaintable, module Paintable) where

import Paintable hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, init, init_super, init_impl, update, update_super, update_impl)
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
import qualified Paintable
import qualified InitUpdatePaintableInterface

-- implements InitUpdatePaintableInterface
data InitUpdatePaintable = InitUpdatePaintable
    { header_ :: JavaHeader
    , base :: Paintable.Paintable
    }

instance JavaNull InitUpdatePaintable where
    javaNull = javaNullRecord "InitUpdatePaintable"

instance JavaEquals InitUpdatePaintable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq InitUpdatePaintable where
    (==) = jrecordEquals

instance JavaObjectClass InitUpdatePaintable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO InitUpdatePaintable
newRecord_ = do
    base <- Paintable.newRecord_
    let header_ = base.header_
    let this = InitUpdatePaintable header_ base
    jregisterLevel header_ this
    InitUpdatePaintableInterface.registerInterface_ header_
    jregisterMethod header_ "init" (\() -> init_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    pure this

initFields_ :: InitUpdatePaintable -> IO ()
initFields_ this = do
    pure ()

new_ :: IO InitUpdatePaintable
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: InitUpdatePaintable -> IO ()
init_ this = do
        Paintable.init_ this.base
        initFields_ this
        pure ()
        pure ()


-- throws Exception
init :: (JavaObjectClass this_) => this_ -> IO (())
init object_ = jmethod object_ "init" (\() -> (init_impl (javaCast object_ :: InitUpdatePaintable))) ()

init_super :: (JavaObjectClass this_) => this_ -> IO (())
init_super object_ = (init_impl (javaCast object_ :: InitUpdatePaintable))

init_impl :: InitUpdatePaintable -> IO (())
init_impl this = do
        pure ()


update :: (JavaObjectClass this_) => this_ -> IO (())
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: InitUpdatePaintable))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (())
update_super object_ = (update_impl (javaCast object_ :: InitUpdatePaintable))

update_impl :: InitUpdatePaintable -> IO (())
update_impl this = do
        pure ()


