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
module NewUserFactory where

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
import qualified CreateUserFactory -- same package or java.lang
import qualified HashMap -- java.util.HashMap
import qualified HttpServletRequest -- javax.servlet.http.HttpServletRequest
import qualified User -- org.allbinary.business.user.modules.User
import qualified UserRoleData -- org.allbinary.business.user.role.UserRoleData
import qualified RequestParams -- org.allbinary.logic.communication.http.request.RequestParams
import qualified TransformInfoHttpInterface -- org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface

data NewUserFactory = NewUserFactory
    { header_ :: JavaHeader
    }

instance JavaNull NewUserFactory where
    javaNull = javaNullRecord "NewUserFactory"

instance JavaEquals NewUserFactory where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq NewUserFactory where
    (==) = jrecordEquals

instance JavaObjectClass NewUserFactory where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

toString :: (JavaObjectClass this_) => this_ -> IO (String)
toString object_ = jmethod object_ "toString" (\() -> jobjectToString object_) ()

newRecord_ :: IO NewUserFactory
newRecord_ = do
    header_ <- newJavaHeader
    let this = NewUserFactory header_
    jregisterLevel header_ this
    pure this

initFields_ :: NewUserFactory -> IO ()
initFields_ this = do
    pure ()

new_ :: IO NewUserFactory
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: NewUserFactory -> IO ()
init_ this = do
        initFields_ this
        pure ()
        pure ()


-- throws Exception
getInstance :: IO (UserInterface.UserInterface)
getInstance = do
        (fmap (\value_ -> javaCast value_ :: UserInterface.UserInterface) (User.new_))


-- throws Exception
getInstance_1 :: TransformInfoInterface.TransformInfoInterface -> IO (UserInterface.UserInterface)
getInstance_1 transformInfoInterface = do
        let httpTransformInfoInterface = (javaCast transformInfoInterface :: TransformInfoHttpInterface.TransformInfoHttpInterface)
        let httpServletRequest = (javaCast (jio (TransformInfoHttpInterface.getRequest ((jio (TransformInfoHttpInterface.getPageContext httpTransformInfoInterface))))) :: HttpServletRequest.HttpServletRequest)
        hashMap <- (RequestParams.toHashMap ((jio (RequestParams.new_1 httpServletRequest))))
        let role = (javaCast (jio (TransformInfoHttpInterface.get ((jio (TransformInfoHttpInterface.getPropertiesHashMap httpTransformInfoInterface))) (UserRoleData.nAME))) :: String)
        Control.Monad.void (HashMap.put hashMap (UserRoleData.nAME) role)
        (CreateUserFactory.getInstance hashMap)


-- throws Exception
getInstance_2 :: HttpServletRequest.HttpServletRequest -> HashMap.HashMap -> IO (UserInterface.UserInterface)
getInstance_2 httpServletRequest propertiesHashMap = do
    javaCatchReturn $ do
        if (propertiesHashMap /= javaNull) then do
            requestHashMap <- (RequestParams.toHashMap ((jio (RequestParams.new_1 httpServletRequest))))
            let roleString = (javaCast (jio (HashMap.get propertiesHashMap (UserRoleData.nAME))) :: String)
            Control.Monad.void (HashMap.put requestHashMap (UserRoleData.nAME) roleString)
            javaReturn =<< (CreateUserFactory.getInstance requestHashMap)
        else do
            javaThrow ((JavaException "Exception" "Null HashMap"))


