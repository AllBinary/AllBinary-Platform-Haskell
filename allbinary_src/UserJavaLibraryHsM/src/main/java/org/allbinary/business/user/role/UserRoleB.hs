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
-- package org.allbinary.business.user.role
module UserRoleB (module UserRoleB, module UserRole) where

import UserRole hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getRole, getRole_super, getRole_impl, getAll, getAll_super, getAll_impl, roleVector)
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
import qualified UserRoleFactory -- same package or java.lang
import qualified BasicArrayList -- org.allbinary.util.BasicArrayList
import qualified BasicArrayListD -- org.allbinary.util.BasicArrayListD
import qualified UserFactoryInterface -- org.allbinary.business.user.UserFactoryInterface
import qualified StdUtil -- org.allbinary.logic.StdUtil
import qualified StringValidationUtil -- org.allbinary.logic.string.StringValidationUtil
import qualified UserRole

data UserRoleB = UserRoleB
    { header_ :: JavaHeader
    , base :: UserRole.UserRole
    }

instance JavaNull UserRoleB where
    javaNull = javaNullRecord "UserRoleB"

instance JavaEquals UserRoleB where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UserRoleB where
    (==) = jrecordEquals

instance JavaObjectClass UserRoleB where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE roleVector #-}
roleVector = unsafePerformIO ((fmap (\value_ -> javaCast value_ :: BasicArrayList.BasicArrayList) (BasicArrayListD.new_)) >>= newIORef)

newRecord_ :: IO UserRoleB
newRecord_ = do
    base <- UserRole.newRecord_
    let header_ = base.header_
    let this = UserRoleB header_ base
    jregisterLevel header_ this
    pure this

initFields_ :: UserRoleB -> IO ()
initFields_ this = do
    pure ()

new_2 :: BasicUserRole.BasicUserRole -> UserFactoryInterface.UserFactoryInterface -> IO UserRoleB
new_2 aBasicUserRole aUserFactoryInterface = do
    this <- newRecord_
    init_2 this aBasicUserRole aUserFactoryInterface
    pure this

init_2 :: UserRoleB -> BasicUserRole.BasicUserRole -> UserFactoryInterface.UserFactoryInterface -> IO ()
init_2 this aBasicUserRole aUserFactoryInterface = do
        UserRole.init_2 this.base (aBasicUserRole) (aUserFactoryInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        Control.Monad.void (add ((jget UserRoleB.roleVector)) this)
        pure ()


-- throws Exception
getRole :: String -> IO (UserRole.UserRole)
getRole role = do
    javaCatchReturn $ do
        Control.Monad.void (UserRoleFactory.getInstance)
        when (Prelude.not (jio (StringValidationUtil.isEmpty ((jio (StringValidationUtil.getInstance))) role))) $ do
            roleVector <- (UserRoleB.getAll)
            size <- (BasicArrayList.size roleVector)
            forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
                let userRole = (javaCast (jio (BasicArrayList.get roleVector index)) :: UserRole.UserRole)
                when ((Prelude.fromEnum (Prelude.compare role (jio (UserRole.toString userRole))) - 1) == 0) $ do
                    javaReturn (userRole)
        javaThrow ((JavaException "Exception" ("Unable to get role - Unknown Role = " ++ role)))


getAll :: IO (BasicArrayList.BasicArrayList)
getAll = do
        Control.Monad.void (UserRoleFactory.getInstance)
        pure ((jget UserRoleB.roleVector))


