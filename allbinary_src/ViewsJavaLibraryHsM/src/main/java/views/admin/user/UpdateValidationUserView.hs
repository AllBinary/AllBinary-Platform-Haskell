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
-- package views.admin.user
module UpdateValidationUserView (module UpdateValidationUserView, module HttpContextView) where

import HttpContextView hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, isValid, isValid_super, isValid_impl, validationInfo, validationInfo_super, validationInfo_impl, toValidationInfoDoc, toValidationInfoDoc_super, toValidationInfoDoc_impl, toValidationInfoNode, toValidationInfoNode_super, toValidationInfoNode_impl, view, view_super, view_impl, logUtil, user)
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
import qualified CommonStrings -- same package or java.lang
import qualified NewUserFactory -- org.allbinary.business.user.NewUserFactory
import qualified UserInterface -- org.allbinary.business.user.UserInterface
import qualified UserEntityFactory -- org.allbinary.data.tables.user.UserEntityFactory
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified ValidationComponentInterface -- org.allbinary.logic.control.validate.ValidationComponentInterface
import qualified StringMaker -- org.allbinary.logic.string.StringMaker
import qualified TransformInfoInterface -- org.allbinary.logic.visual.transform.info.TransformInfoInterface
import qualified Document -- org.w3c.dom.Document
import qualified Node -- org.w3c.dom.Node
import qualified HttpContextView -- views.business.context.HttpContextView

-- implements ValidationComponentInterface
data UpdateValidationUserView = UpdateValidationUserView
    { header_ :: JavaHeader
    , base :: HttpContextView.HttpContextView
    , logUtil :: IORef (LogUtil.LogUtil)
    , user :: IORef (UserInterface.UserInterface)
    }

instance JavaNull UpdateValidationUserView where
    javaNull = javaNullRecord "UpdateValidationUserView"

instance JavaEquals UpdateValidationUserView where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UpdateValidationUserView where
    (==) = jrecordEquals

instance JavaObjectClass UpdateValidationUserView where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO UpdateValidationUserView
newRecord_ = do
    base <- HttpContextView.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    user <- newIORef javaNull
    let this = UpdateValidationUserView header_ base logUtil user
    jregisterLevel header_ this
    ValidationComponentInterface.registerInterface_ header_
    jregisterMethod header_ "isValid" (\() -> isValid_impl this)
    jregisterMethod header_ "validationInfo" (\() -> validationInfo_impl this)
    jregisterMethod header_ "toValidationInfoDoc" (\() -> toValidationInfoDoc_impl this)
    jregisterMethod header_ "toValidationInfoNode" (\() -> toValidationInfoNode_impl this)
    jregisterMethod header_ "view" (\() -> view_impl this)
    pure this

initFields_ :: UpdateValidationUserView -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    jset this.user (javaNull)
    pure ()

new_1 :: TransformInfoInterface.TransformInfoInterface -> IO UpdateValidationUserView
new_1 transformInfoInterface = do
    this <- newRecord_
    init_1 this transformInfoInterface
    pure this

init_1 :: UpdateValidationUserView -> TransformInfoInterface.TransformInfoInterface -> IO ()
init_1 this transformInfoInterface = do
        HttpContextView.init_1 this.base (transformInfoInterface)
        initFields_ this
        pure () -- super(...) is in the record above
        assignedValue <- (NewUserFactory.getInstance_1 transformInfoInterface)
        jset (this).user (assignedValue)
        pure ()


isValid :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid object_ = jmethod object_ "isValid" (\() -> (isValid_impl (javaCast object_ :: UpdateValidationUserView))) ()

isValid_super :: (JavaObjectClass this_) => this_ -> IO (Bool)
isValid_super object_ = (isValid_impl (javaCast object_ :: UpdateValidationUserView))

isValid_impl :: UpdateValidationUserView -> IO (Bool)
isValid_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEWERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Failed to validate" this (jget ((jget (this).base.commonStrings)).iS_VALID) e)
            pure (False)
            ) $ do
            when ((jio (UserEntity.getUser ((jio (UserEntityFactory.getInstance))) (jio (UserInterface.getUserName ((jget (this).user)))))) == javaNull) $ do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "User does not exist" this (jget ((jget (this).base.commonStrings)).iS_VALID))
                javaReturn (False)
            when ((jio (UserInterface.isValid ((jget (this).user)))) == False) $ do
                javaReturn (False)
            pure (True)


validationInfo :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo object_ = jmethod object_ "validationInfo" (\() -> (validationInfo_impl (javaCast object_ :: UpdateValidationUserView))) ()

validationInfo_super :: (JavaObjectClass this_) => this_ -> IO (String)
validationInfo_super object_ = (validationInfo_impl (javaCast object_ :: UpdateValidationUserView))

validationInfo_impl :: UpdateValidationUserView -> IO (String)
validationInfo_impl this = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEWERROR))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) "Failed to generate validation error info" this "validationInfo()" e)
            pure ("Error Getting Validation Info")
            ) $ do
            stringBuffer <- (StringMaker.new_)
            when ((jio (UserEntity.getUser ((jio (UserEntityFactory.getInstance))) (jio (UserInterface.getUserName ((jget (this).user)))))) == javaNull) $ do
                when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).vIEW))) $ do
                    Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) "User does not exist" this "validationInfo()")
                Control.Monad.void (StringMaker.append stringBuffer "Unable to update user that does not exist.<br />")
            when ((jio (UserInterface.isValid ((jget (this).user)))) == False) $ do
                Control.Monad.void (StringMaker.append stringBuffer (jio (UserInterface.validationInfo ((jget (this).user)))))
            (StringMaker.toString stringBuffer)


toValidationInfoDoc :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc object_ = jmethod object_ "toValidationInfoDoc" (\() -> (toValidationInfoDoc_impl (javaCast object_ :: UpdateValidationUserView))) ()

toValidationInfoDoc_super :: (JavaObjectClass this_) => this_ -> IO (Document.Document)
toValidationInfoDoc_super object_ = (toValidationInfoDoc_impl (javaCast object_ :: UpdateValidationUserView))

toValidationInfoDoc_impl :: UpdateValidationUserView -> IO (Document.Document)
toValidationInfoDoc_impl this = do
        pure (javaNull)


toValidationInfoNode :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode object_ a1 = jmethod object_ "toValidationInfoNode" (\() -> (toValidationInfoNode_impl (javaCast object_ :: UpdateValidationUserView))) () a1

toValidationInfoNode_super :: (JavaObjectClass this_) => this_ -> Document.Document -> IO (Node.Node)
toValidationInfoNode_super object_ a1 = (toValidationInfoNode_impl (javaCast object_ :: UpdateValidationUserView)) a1

toValidationInfoNode_impl :: UpdateValidationUserView -> Document.Document -> IO (Node.Node)
toValidationInfoNode_impl this document = do
        pure (javaNull)


-- throws Exception
view :: (JavaObjectClass this_) => this_ -> IO (String)
view object_ = jmethod object_ "view" (\() -> (view_impl (javaCast object_ :: UpdateValidationUserView))) ()

view_super :: (JavaObjectClass this_) => this_ -> IO (String)
view_super object_ = (view_impl (javaCast object_ :: UpdateValidationUserView))

view_impl :: UpdateValidationUserView -> IO (String)
view_impl this = do
        (view ((jio (getInstance ((jget ((jget this.base.views)).validationOnlyTempUtil))))) this)


