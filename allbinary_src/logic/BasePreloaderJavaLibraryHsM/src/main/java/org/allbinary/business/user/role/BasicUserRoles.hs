{-# LANGUAGE OverloadedRecordDot, ScopedTypeVariables, DuplicateRecordFields #-}
{-# OPTIONS_GHC -fno-cse -fno-full-laziness #-}
-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2026 AllBinary 
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
-- package org.allbinary.business.user.role
module BasicUserRoles where

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
import qualified BasicUserRole -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD

data BasicUserRoles = BasicUserRoles
    { header_ :: JavaHeader
    , roleVector :: IORef (BasicArrayList.BasicArrayList)
    }

instance JavaNull BasicUserRoles where
    javaNull = javaNullRecord "BasicUserRoles"

instance JavaEquals BasicUserRoles where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicUserRoles where
    (==) = jrecordEquals

instance JavaObjectClass BasicUserRoles where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO BasicUserRoles
newRecord_ = do
    header_ <- newJavaHeader
    roleVector <- newIORef javaNull
    let this = BasicUserRoles header_ roleVector
    jregisterLevel header_ this
    jregisterMethod header_ "getRole" (\() -> getRole_impl this)
    jregisterMethod header_ "getAll" (\() -> getAll_impl this)
    pure this

initFields_ :: BasicUserRoles -> IO ()
initFields_ this = do
    jset this.roleVector =<< (fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_))
    pure ()

new_ :: IO BasicUserRoles
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasicUserRoles -> IO ()
init_ this = do
    initFields_ this


getInstance :: IO (BasicUserRoles)
getInstance = do
        pure (BasicUserRoles.instance_)


-- throws Exception
getRole :: (JavaObjectClass this_) => this_ -> String -> IO (BasicUserRole.BasicUserRole)
getRole object_ a1 = jmethod object_ "getRole" (\() -> (getRole_impl (javaCast object_ :: BasicUserRoles))) () a1

getRole_super :: (JavaObjectClass this_) => this_ -> String -> IO (BasicUserRole.BasicUserRole)
getRole_super object_ a1 = (getRole_impl (javaCast object_ :: BasicUserRoles)) a1

getRole_impl :: BasicUserRoles -> String -> IO (BasicUserRole.BasicUserRole)
getRole_impl this role = do
    javaCatchReturn $ do
        roleVector <- (BasicUserRoles.getAll this)
        size <- (BasicArrayList.size roleVector)
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let userRole = (javaCast (jio (BasicArrayList.get roleVector index)) :: BasicUserRole.BasicUserRole)
            when ((Prelude.fromEnum (Prelude.compare role (jio (BasicUserRole.toString userRole))) - 1) == 0) $ do
                javaReturn (userRole)
        javaThrow ((JavaException "Exception" "Unable to get role - Unknown Role"))


getAll :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getAll object_ = jmethod object_ "getAll" (\() -> (getAll_impl (javaCast object_ :: BasicUserRoles))) ()

getAll_super :: (JavaObjectClass this_) => this_ -> IO (BasicArrayList.BasicArrayList)
getAll_super object_ = (getAll_impl (javaCast object_ :: BasicUserRoles))

getAll_impl :: BasicUserRoles -> IO (BasicArrayList.BasicArrayList)
getAll_impl this = do
        pure ((jget (this).roleVector))


