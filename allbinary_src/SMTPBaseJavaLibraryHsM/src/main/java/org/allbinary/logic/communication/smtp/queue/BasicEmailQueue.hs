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
-- package org.allbinary.logic.communication.smtp.queue
module BasicEmailQueue (module BasicEmailQueue, module BasicQueue) where

import BasicQueue hiding (new_, init_, newRecord_, initFields_, header_, base, staticInit_, instanceInit_, registerInterface_, fromHeader_, instance_, new_1, new_2, new_3, new_4, new_5, new_6, new_7, new_8, new_9, init_1, init_2, init_3, init_4, init_5, init_6, init_7, init_8, init_9, getInstance, getInstance_super, getInstance_impl, offer, offer_super, offer_impl, remove, remove_super, remove_impl, remove_0, remove_0_super, remove_0_impl, remove, post, post_super, post_impl, processAllUnsent, processAllUnsent_super, processAllUnsent_impl, send, send_super, send_impl, logUtil, instance_, basicEmailQueue)
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
import qualified Any -- same package or java.lang
import qualified BasicArrayList -- same package or java.lang
import qualified Transport -- javax.mail.Transport
import qualified LogUtil -- org.allbinary.logic.communication.log.LogUtil
import qualified EmailInterface -- org.allbinary.logic.communication.smtp.EmailInterface
import qualified BasicQueue -- org.allbinary.logic.util.queue.BasicQueue
import qualified EmailQueueInterface

-- implements EmailQueueInterface
data BasicEmailQueue = BasicEmailQueue
    { header_ :: JavaHeader
    , base :: BasicQueue.BasicQueue
    , logUtil :: IORef (LogUtil.LogUtil)
    }

instance JavaNull BasicEmailQueue where
    javaNull = javaNullRecord "BasicEmailQueue"

instance JavaEquals BasicEmailQueue where
    javaEquals object object2 = object.header_ == object2.header_

instance Eq BasicEmailQueue where
    (==) = jrecordEquals

instance JavaObjectClass BasicEmailQueue where
    jisNull = jrecordIsNull
    jheaderMaybe object = if jrecordIsNull object then Nothing else Just object.header_

{-# NOINLINE instance_ #-}
instance_ = unsafePerformIO ((new_))

{-# NOINLINE basicEmailQueue #-}
basicEmailQueue = unsafePerformIO (newIORef (javaNull))

newRecord_ :: IO BasicEmailQueue
newRecord_ = do
    base <- BasicQueue.newRecord_
    let header_ = base.header_
    logUtil <- newIORef javaNull
    let this = BasicEmailQueue header_ base logUtil
    jregisterLevel header_ this
    EmailQueueInterface.registerInterface_ header_
    jregisterMethod header_ "offer" (\() -> offer_impl this)
    jregisterMethod header_ "remove" (\() -> remove_impl this)
    jregisterMethod header_ "remove_0" (\() -> remove_0_impl this)
    jregisterMethod header_ "post" (\() -> post_impl this)
    jregisterMethod header_ "processAllUnsent" (\() -> processAllUnsent_impl this)
    jregisterMethod header_ "send" (\() -> send_impl this)
    pure this

initFields_ :: BasicEmailQueue -> IO ()
initFields_ this = do
    jset this.logUtil =<< (LogUtil.getInstance)
    pure ()

new_ :: IO BasicEmailQueue
new_ = do
    this <- newRecord_
    init_ this
    pure this

init_ :: BasicEmailQueue -> IO ()
init_ this = do
        BasicQueue.init_ this.base
        initFields_ this
        pure ()
        pure ()


getInstance :: IO (BasicEmailQueue)
getInstance = do
        when ((jget BasicEmailQueue.basicEmailQueue) == javaNull) $ do
            assignedValue <- (new_)
            jset BasicEmailQueue.basicEmailQueue (assignedValue)
        pure ((jget BasicEmailQueue.basicEmailQueue))


-- throws Exception
offer :: (JavaObjectClass this_) => this_ -> EmailInterface.EmailInterface -> IO (Bool)
offer object_ a1 = jmethod object_ "offer" (\() -> (offer_impl (javaCast object_ :: BasicEmailQueue))) () a1

offer_super :: (JavaObjectClass this_) => this_ -> EmailInterface.EmailInterface -> IO (Bool)
offer_super object_ a1 = (offer_impl (javaCast object_ :: BasicEmailQueue)) a1

offer_impl :: BasicEmailQueue -> EmailInterface.EmailInterface -> IO (Bool)
offer_impl this emailInterface = do
        Control.Monad.void (BasicEmailQueue.offer this (javaCast emailInterface :: Any.Any))
        Control.Monad.void (BasicEmailQueue.post this emailInterface)
        pure (True)


remove :: (JavaObjectClass this_) => this_ -> EmailInterface.EmailInterface -> IO (())
remove object_ a1 = jmethod object_ "remove" (\() -> (remove_impl (javaCast object_ :: BasicEmailQueue))) () a1

remove_super :: (JavaObjectClass this_) => this_ -> EmailInterface.EmailInterface -> IO (())
remove_super object_ a1 = (remove_impl (javaCast object_ :: BasicEmailQueue)) a1

remove_impl :: BasicEmailQueue -> EmailInterface.EmailInterface -> IO (())
remove_impl this emailInterface = do
        Control.Monad.void (BasicEmailQueue.remove this (javaCast emailInterface :: Any.Any))
        pure ()


remove_0 :: (JavaObjectClass this_) => this_ -> IO (EmailInterface.EmailInterface)
remove_0 object_ = jmethod object_ "remove_0" (\() -> (remove_0_impl (javaCast object_ :: BasicEmailQueue))) ()

remove_0_super :: (JavaObjectClass this_) => this_ -> IO (EmailInterface.EmailInterface)
remove_0_super object_ = (remove_0_impl (javaCast object_ :: BasicEmailQueue))

remove_0_impl :: BasicEmailQueue -> IO (EmailInterface.EmailInterface)
remove_0_impl this = do
        pure (javaNull)


-- throws Exception
post :: (JavaObjectClass this_) => this_ -> EmailInterface.EmailInterface -> IO (())
post object_ a1 = jmethod object_ "post" (\() -> (post_impl (javaCast object_ :: BasicEmailQueue))) () a1

post_super :: (JavaObjectClass this_) => this_ -> EmailInterface.EmailInterface -> IO (())
post_super object_ a1 = (post_impl (javaCast object_ :: BasicEmailQueue)) a1

post_impl :: BasicEmailQueue -> EmailInterface.EmailInterface -> IO (())
post_impl this emailInterface = do
        when (jio (BasicEmailQueue.send this emailInterface)) $ do
            Control.Monad.void (BasicEmailQueue.remove this emailInterface)
            Control.Monad.void (BasicEmailQueue.processAllUnsent this)
        pure ()


-- throws Exception
processAllUnsent :: (JavaObjectClass this_) => this_ -> IO (())
processAllUnsent object_ = jmethod object_ "processAllUnsent" (\() -> (processAllUnsent_impl (javaCast object_ :: BasicEmailQueue))) ()

processAllUnsent_super :: (JavaObjectClass this_) => this_ -> IO (())
processAllUnsent_super object_ = (processAllUnsent_impl (javaCast object_ :: BasicEmailQueue))

processAllUnsent_impl :: BasicEmailQueue -> IO (())
processAllUnsent_impl this = do
        size <- (BasicArrayList.size ((jget this.base.queueVector)))
        forM_ [0 .. size - 1] $ \index -> javaIteration (pure ()) $ do
            let emailInterface = (javaCast (jio (BasicArrayList.get ((jget this.base.queueVector)) index)) :: EmailInterface.EmailInterface)
            when (jio (BasicEmailQueue.send this emailInterface)) $ do
                Control.Monad.void (BasicEmailQueue.remove this emailInterface)
                Control.Monad.void (BasicEmailQueue.processAllUnsent this)
        pure ()


send :: (JavaObjectClass this_) => this_ -> EmailInterface.EmailInterface -> IO (Bool)
send object_ a1 = jmethod object_ "send" (\() -> (send_impl (javaCast object_ :: BasicEmailQueue))) () a1

send_super :: (JavaObjectClass this_) => this_ -> EmailInterface.EmailInterface -> IO (Bool)
send_super object_ a1 = (send_impl (javaCast object_ :: BasicEmailQueue)) a1

send_impl :: BasicEmailQueue -> EmailInterface.EmailInterface -> IO (Bool)
send_impl this emailInterface = do
        handle (\(e :: JavaException) -> do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eMAILLOGGING))) $ do
                Control.Monad.void (LogUtil.put ((jget (this).logUtil)) ("Failed Email Send Debug: " ++ javaToString (jio (EmailInterface.getDebugInfo emailInterface))) this "send" e)
            pure (False)
            ) $ do
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eMAILLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Sending: " ++ javaToString (jio (EmailInterface.log emailInterface))) this "send")
            Control.Monad.void (Transport.send (jio (EmailInterface.getMimeMessage emailInterface)))
            when (jio (contains ((jget ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypes)).lOGGING)) (jget ((jio (getInstance ((jget ((jget ((jget ((jget ((jget ((jget (org.allbinary).logic)).communication)).log)).config)).type_)).logConfigTypeFactory))))).eMAILLOGGING))) $ do
                Control.Monad.void (LogUtil.putF ((jget (this).logUtil)) ("Email Send Debug: " ++ javaToString (jio (EmailInterface.getDebugInfo emailInterface))) this "send")
            pure (True)


