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
-- package tags.generic.user
module UsersTag (module UsersTag, module StoreValidationTransformTag) where

import StoreValidationTransformTag hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, setRole, setRole_super, setRole_impl, doStartTag, doStartTag_super, doStartTag_impl, role)
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
import qualified JspTagException -- javax.servlet.jsp.JspTagException
import qualified UserRoleData -- org.allbinary.business.user.role.UserRoleData
import qualified AbResponseHandler -- org.allbinary.logic.communication.http.request.AbResponseHandler
import qualified StoreValidationTransformTag -- tags.StoreValidationTransformTag

data UsersTag = UsersTag
    { header_ :: JavaHeader
    , base :: StoreValidationTransformTag.StoreValidationTransformTag
    , role :: IORef (String)
    }

instance JavaNull UsersTag where
    javaNull = javaNullRecord "UsersTag"

instance JavaEquals UsersTag where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq UsersTag where
    (==) = jrecordEquals

instance JavaObjectClass UsersTag where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

newRecord_ :: IO UsersTag
newRecord_ = do
    base <- StoreValidationTransformTag.newRecord_
    let header_ = base.header_
    role <- newIORef ""
    let this = UsersTag header_ base role
    jregisterLevel header_ this
    jregisterMethod header_ "setRole" (\() -> setRole_impl this)
    jregisterMethod header_ "doStartTag" (\() -> doStartTag_impl this)
    pure this

initFields_ :: UsersTag -> IO ()
initFields_ this = do
    jset this.role ("")
    pure ()

new_ :: IO UsersTag
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: UsersTag -> IO ()
init_ this = do
        StoreValidationTransformTag.init_ this.base
        initFields_ this
        pure ()
        pure ()


setRole :: (JavaObjectClass this_) => this_ -> String -> IO (())
setRole object_ a1 = jmethod object_ "setRole" (\() -> (setRole_impl (javaCast object_ :: UsersTag))) () a1

setRole_super :: (JavaObjectClass this_) => this_ -> String -> IO (())
setRole_super object_ a1 = (setRole_impl (javaCast object_ :: UsersTag)) a1

setRole_impl :: UsersTag -> String -> IO (())
setRole_impl this value = do
        jset (this).role (value)
        pure ()


-- throws JspTagException
doStartTag :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag object_ = jmethod object_ "doStartTag" (\() -> (doStartTag_impl (javaCast object_ :: UsersTag))) ()

doStartTag_super :: (JavaObjectClass this_) => this_ -> IO (Int)
doStartTag_super object_ = (doStartTag_impl (javaCast object_ :: UsersTag))

doStartTag_impl :: UsersTag -> IO (Int)
doStartTag_impl this = do
    javaCatchReturn $ do
        handle (\(e :: JavaException) -> do
            Control.Monad.void (AbResponseHandler.sendJspTagRedirect (jget (this).base.pageContext) e)
            pure (sKIP_BODY)
            ) $ do
            Control.Monad.void (StoreValidationTransformTag.setName this "Generic Users View")
            Control.Monad.void (StoreValidationTransformTag.setObjectFile this "views.generic.user.UsersValidationView")
            when ((jio (StoreValidationTransformTag.getCommand this)) /= javaNull) $ do
                Control.Monad.void (HashMap.put ((jio (StoreValidationTransformTag.getPropertiesHashMap this))) (UserRoleData.nAME) (jget (this).role))
                if ((Prelude.fromEnum (Prelude.compare (jio (StoreValidationTransformTag.getCommand this)) (jget ((jget ((jget (org.allbinary).globals)).gLOBALS2)).vIEW)) - 1) == 0) then do
                    pure ()
                else do
                    javaThrow ((JavaException "Exception" ("No Such View Command: " ++ javaToString (jio (StoreValidationTransformTag.getCommand this)))))
                javaReturn =<< (StoreValidationTransformTag.doStartTag_super this.base)
            javaThrow ((JavaException "Exception" "Command Null"))


