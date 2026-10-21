{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
-- package admin.taghelpers
module ModifyTable where

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
import qualified CommonStrings -- org.allbinary.string.CommonStrings
import qualified TagStrings -- tags.TagStrings
import qualified ModifyTableInterface

-- implements ModifyTableInterface
data ModifyTable = ModifyTable
    { header_ :: JavaHeader
    , commonStrings :: IORef (CommonStrings.CommonStrings)
    , tagStrings :: IORef (TagStrings.TagStrings)
    }

instance JavaNull ModifyTable where
    javaNull = javaNullRecord "ModifyTable"

instance JavaEquals ModifyTable where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ModifyTable where
    (==) = jrecordEquals

instance JavaObjectClass ModifyTable where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO ModifyTable
newRecord_ = do
    header_ <- newJavaHeader
    commonStrings <- newIORef javaNull
    tagStrings <- newIORef javaNull
    let this = ModifyTable header_ commonStrings tagStrings
    jregisterLevel header_ this
    ModifyTableInterface.registerInterface_ header_
    jregisterMethod header_ "insert" (\() -> insert_impl this)
    jregisterMethod header_ "delete" (\() -> delete_impl this)
    jregisterMethod header_ "update" (\() -> update_impl this)
    pure this

initFields_ :: ModifyTable -> IO ()
initFields_ this = do
    jset this.commonStrings =<< (CommonStrings.getInstance)
    jset this.tagStrings =<< (TagStrings.getInstance)
    pure ()

new_ :: IO ModifyTable
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ModifyTable -> IO ()
init_ this = do
    initFields_ this


-- throws Exception
insert :: (JavaObjectClass this_) => this_ -> IO (String)
insert object_ = jmethod object_ "insert" (\() -> (insert_impl (javaCast object_ :: ModifyTable))) ()

insert_super :: (JavaObjectClass this_) => this_ -> IO (String)
insert_super object_ = (insert_impl (javaCast object_ :: ModifyTable))

insert_impl :: ModifyTable -> IO (String)
insert_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


-- throws Exception
delete :: (JavaObjectClass this_) => this_ -> IO (String)
delete object_ = jmethod object_ "delete" (\() -> (delete_impl (javaCast object_ :: ModifyTable))) ()

delete_super :: (JavaObjectClass this_) => this_ -> IO (String)
delete_super object_ = (delete_impl (javaCast object_ :: ModifyTable))

delete_impl :: ModifyTable -> IO (String)
delete_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


-- throws Exception
update :: (JavaObjectClass this_) => this_ -> IO (String)
update object_ = jmethod object_ "update" (\() -> (update_impl (javaCast object_ :: ModifyTable))) ()

update_super :: (JavaObjectClass this_) => this_ -> IO (String)
update_super object_ = (update_impl (javaCast object_ :: ModifyTable))

update_impl :: ModifyTable -> IO (String)
update_impl this = do
        javaThrow ((JavaException "RuntimeException" ""))


