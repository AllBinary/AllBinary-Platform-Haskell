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
-- package org.allbinary.business.user.modules.admin.store.order.review
module ReviewOrderStoreAdminUser (module ReviewOrderStoreAdminUser, module User) where

import User hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, validateSession, validateSession_super, validateSession_impl, updateSession, updateSession_super, updateSession_impl)
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
import qualified HashMap -- java.util.HashMap
import qualified User -- org.allbinary.business.user.modules.User
import qualified WeblisketSessionInterface -- org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface

data ReviewOrderStoreAdminUser = ReviewOrderStoreAdminUser
    { header_ :: JavaHeader
    , base :: User.User
    }

instance JavaNull ReviewOrderStoreAdminUser where
    javaNull = javaNullRecord "ReviewOrderStoreAdminUser"

instance JavaEquals ReviewOrderStoreAdminUser where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq ReviewOrderStoreAdminUser where
    (==) = jrecordEquals

instance JavaObjectClass ReviewOrderStoreAdminUser where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO ReviewOrderStoreAdminUser
newRecord_ = do
    base <- User.newRecord_
    let header_ = base.header_
    let this = ReviewOrderStoreAdminUser header_ base
    jregisterLevel header_ this
    jregisterMethod header_ "validateSession" (\() -> validateSession_impl this)
    jregisterMethod header_ "updateSession" (\() -> updateSession_impl this)
    pure this

initFields_ :: ReviewOrderStoreAdminUser -> IO ()
initFields_ this = do
    pure ()

new_ :: IO ReviewOrderStoreAdminUser
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: ReviewOrderStoreAdminUser -> IO ()
init_ this = do
        User.init_ this.base
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()

new_1 :: HashMap.HashMap -> IO ReviewOrderStoreAdminUser
new_1 userHashMap = do
    this <- newRecord_
    init_1 this userHashMap
    pure this

init_1 :: ReviewOrderStoreAdminUser -> HashMap.HashMap -> IO ()
init_1 this userHashMap = do
        User.init_1 this.base (userHashMap)
        initFields_ this
        pure () -- super(...) is in the record above
        pure ()


validateSession :: (JavaObjectClass this_) => this_ -> WeblisketSessionInterface.WeblisketSessionInterface -> IO (())
validateSession object_ a1 = jmethod object_ "validateSession" (\() -> (validateSession_impl (javaCast object_ :: ReviewOrderStoreAdminUser))) () a1

validateSession_super :: (JavaObjectClass this_) => this_ -> WeblisketSessionInterface.WeblisketSessionInterface -> IO (())
validateSession_super object_ a1 = (validateSession_impl (javaCast object_ :: ReviewOrderStoreAdminUser)) a1

validateSession_impl :: ReviewOrderStoreAdminUser -> WeblisketSessionInterface.WeblisketSessionInterface -> IO (())
validateSession_impl this weblisketSession = do
        Control.Monad.void (User.validateSession_super this.base weblisketSession)
        Control.Monad.void (ReviewOrderStoreAdminUser.updateSession this weblisketSession)
        pure ()


updateSession :: (JavaObjectClass this_) => this_ -> WeblisketSessionInterface.WeblisketSessionInterface -> IO (())
updateSession object_ a1 = jmethod object_ "updateSession" (\() -> (updateSession_impl (javaCast object_ :: ReviewOrderStoreAdminUser))) () a1

updateSession_super :: (JavaObjectClass this_) => this_ -> WeblisketSessionInterface.WeblisketSessionInterface -> IO (())
updateSession_super object_ a1 = (updateSession_impl (javaCast object_ :: ReviewOrderStoreAdminUser)) a1

updateSession_impl :: ReviewOrderStoreAdminUser -> WeblisketSessionInterface.WeblisketSessionInterface -> IO (())
updateSession_impl this weblisketSession = do
        Control.Monad.void (WeblisketSessionInterface.setStoreName weblisketSession (jio (User.getPermissions this)))
        pure ()


