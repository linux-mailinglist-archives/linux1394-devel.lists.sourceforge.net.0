Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 724E067B230
	for <lists+linux1394-devel@lfdr.de>; Wed, 25 Jan 2023 13:03:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1pKeV4-0005BA-0p;
	Wed, 25 Jan 2023 12:03:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1pKeUy-0005Ac-01
 for linux1394-devel@lists.sourceforge.net;
 Wed, 25 Jan 2023 12:03:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hZ7RuQIyW+uO5lxrWZkD8RA7gqZCCqok8mXl9QhbwOw=; b=IZOeTJ8/OEGj3vOI/WvZN7wGZL
 QYm7FpdbKnfwizv/ByrFdtr8cl3O4HgCcwG1I8QVJuxKpje6QGlsdwEg7GVzfr3BZx+TV8cyAI+W+
 jVc1ZHo5E6mUzWbC7Re1v3cKDWEbe2g5HG5DqbsVjGVm6Hh9dllmh1gse3/e6bNOG/Yc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hZ7RuQIyW+uO5lxrWZkD8RA7gqZCCqok8mXl9QhbwOw=; b=amW0v99vqAJLk+q/7J8k4TRe20
 lAiGvQfEWLpdJl2mom3MMVsNlFUv+2Oa7vThk1fXmXOLy5EZQbIQy0IsnsLYOtFky9LujL+waD5c3
 ywZ31Aq2wp4eXALKM2E7otC3dIVkz5Z8Qh7fHxMZ7syAQu4FQoJ6nw11cCb1M0aX95dA=;
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pKeUn-00088G-Vw for linux1394-devel@lists.sourceforge.net;
 Wed, 25 Jan 2023 12:03:25 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id 53C255C0099;
 Wed, 25 Jan 2023 07:03:08 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Wed, 25 Jan 2023 07:03:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm3; t=1674648188; x=
 1674734588; bh=hZ7RuQIyW+uO5lxrWZkD8RA7gqZCCqok8mXl9QhbwOw=; b=I
 MW2g/5LyJYS+42oOzu3Cj9Vcwc/3YoVkBS3xgk4gAQOxYN9ikRFFIZnDhrbAgZ9r
 njPluiEfvCP6sxJbJzjXIvX6myT/CN7ewe7MrsUhP0MPmPnSuAgjojZ/+VxMYY9x
 EMEsMubc/Q8DingX9wY0glifnWMbXKTgxSmOttanpx1e3ASQnf9cXVeTLBHHv0DO
 mRKNl610cdv6mzlG4TAehH+wpPdcGv7vuHssokKbRm3awZ/ut4E8V2V5IBlGuX4e
 s4gsyFabmMPVJWpO5hKGsPZTTH6waTMYBLsdc91k3VMd9chMm/3cKjZIinJYA1ra
 buHX0iCDrQxljOqOZmtow==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm3; t=1674648188; x=1674734588; bh=hZ7RuQIyW+uO5
 lxrWZkD8RA7gqZCCqok8mXl9QhbwOw=; b=FS2mTxpAKmYyZPsbtyJj7pIVmTG/1
 X+Nfmzm7cZBuTXTHOx4dghUqSYK84Blmh2mAb8kdJlAgqGc0koX3eQvjLMKA8p1l
 9WB/ZU0DOAGKCSrWf75BdTe0sXjjoWpN1XA7bl06HrTKf92hGy69ffuYALH+3dz5
 IIrnTI6/BIGyeY4aS4BXqlOtvmNQoWpWBG6C1X3q0MrVLJzMCO2h49Uc1RXqQAsH
 kijKmPN3/eklgPuiE2KydIP+UyITiIQNfUdKVF6qcXA3S9/L2EFzIG2b2Yq0HNhr
 VM4vVvwwAT0GPOR0rk3keBOUdu4pBCZ5O82H46MuqpafRLWJ7gNwUA9Rw==
X-ME-Sender: <xms:fBrRY9Ku1erhEDclvnmlCl1NZVFV1Q5e5gFuWu8v1SdDVn7EBaQCsQ>
 <xme:fBrRY5I3moWgK4chzyD3HezEDKQh_9loBA8srodJjXUcuptLhtbgAb53tBbLvITVj
 7ihBEFG37m-B_ZMcD0>
X-ME-Received: <xmr:fBrRY1stjz6-jPczH2zd9ECU1S7KbHZlQ0uc7Pn_6YNy7et7b8d972cLb9Xqw6OFzKYKFkN4GFWOkKpSUr0SiIPGzWfstiyY8jDPhW6clFuXe3k7EJ1cg8Y>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedruddvvddgfeehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:fBrRY-Z9fURJqtK9eV655C7JSN8zrxcOcA8ROgJoPShmnlmHc2nXxw>
 <xmx:fBrRY0YD16jaVmjIbn9xG0CLhTl1NVyDAWfxxessGrj3i5XAMnEjAA>
 <xmx:fBrRYyDl60nHRKYsyDRHeqMe0CaGSf6Ppn2J5ULK_B8fkHaqAOvOOg>
 <xmx:fBrRYznzqP6WuplouZ9GG2Pi-oXXOtgVR4MmGCyu_iMtEJxjInWIQA>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 25 Jan 2023 07:03:07 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: stefanr@s5r6.in-berlin.de
Subject: [PATCH 01/11] firewire: cdev: add new version of ABI to notify time
 stamp at request/response subaction of transaction
Date: Wed, 25 Jan 2023 21:02:51 +0900
Message-Id: <20230125120301.51585-2-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230125120301.51585-1-o-takashi@sakamocchi.jp>
References: <20230125120301.51585-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  This commit adds new version of ABI for future new events
 with time stamp for request/response subaction of asynchronous transaction
 to user space. Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
 --- drivers/firewire/core-cdev.c | 1 + include/uapi/linux/firewire-cdev.h
 | 1 + 2 files changed, 2 insertions(+) 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [66.111.4.27 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pKeUn-00088G-Vw
X-BeenThere: linux1394-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux IEEE 1394 development list
 <linux1394-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=linux1394-devel>
List-Post: <mailto:linux1394-devel@lists.sourceforge.net>
List-Help: <mailto:linux1394-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=subscribe>
Cc: tiwai@suse.de, linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

This commit adds new version of ABI for future new events with time stamp
for request/response subaction of asynchronous transaction to user
space.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-cdev.c       | 1 +
 include/uapi/linux/firewire-cdev.h | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index 2c16ee8fd842..88c8b5fac5e5 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -43,6 +43,7 @@
 #define FW_CDEV_VERSION_EVENT_REQUEST2		4
 #define FW_CDEV_VERSION_ALLOCATE_REGION_END	4
 #define FW_CDEV_VERSION_AUTO_FLUSH_ISO_OVERFLOW	5
+#define FW_CDEV_VERSION_EVENT_ASYNC_TSTAMP	6
 
 struct client {
 	u32 version;
diff --git a/include/uapi/linux/firewire-cdev.h b/include/uapi/linux/firewire-cdev.h
index 92be3ea3c6e0..621ee56d11b5 100644
--- a/include/uapi/linux/firewire-cdev.h
+++ b/include/uapi/linux/firewire-cdev.h
@@ -457,6 +457,7 @@ union fw_cdev_event {
  *  5  (3.4)     - send %FW_CDEV_EVENT_ISO_INTERRUPT events when needed to
  *                 avoid dropping data
  *               - added %FW_CDEV_IOC_FLUSH_ISO
+ *  6  (6.3)     - added some event for subactions of asynchronous transaction with time stamp
  */
 
 /**
-- 
2.37.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
