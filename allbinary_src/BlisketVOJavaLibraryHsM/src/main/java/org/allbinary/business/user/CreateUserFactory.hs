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
-- package org.allbinary.business.user
module CreateUserFactory where

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
import qualified UserInterface -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified UserRole -- org.allbinary.business.user.role.UserRole
import qualified UserRoleB -- org.allbinary.business.user.role.UserRoleB
import qualified UserRoleData -- org.allbinary.business.user.role.UserRoleData
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil

data CreateUserFactory = CreateUserFactory
    { header_ :: JavaHeader
    }

instance JavaNull CreateUserFactory where
    javaNull = javaNullRecord "CreateUserFactory"

instance JavaEquals CreateUserFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq CreateUserFactory where
    (==) = jrecordEquals

instance JavaObjectClass CreateUserFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO CreateUserFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = CreateUserFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: CreateUserFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO CreateUserFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: CreateUserFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
getInstance :: HashMap.HashMap -> IO (UserInterface.UserInterface)
getInstance hashMap = do
    javaCatchReturn $ do
        if (hashMap /= javaNull) then do
            let roleString = (javaCast (jio (HashMap.get hashMap (UserRoleData.nAME))) :: String)
            if (Prelude.not (jio (StringValidationUtil.isEmpty ((jio (StringValidationUtil.getInstance))) roleString))) then do
                role <- (UserRoleB.getRole roleString)
                javaReturn =<< (UserFactoryInterface.getInstance ((jio (UserRole.getUserFactory role))) hashMap)
            else do
                javaThrow ((JavaException "Exception" "No Role Specified"))
        else do
            javaThrow ((JavaException "Exception" "Null HashMap"))


