Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BADE594E48C
	for <lists+linux1394-devel@lfdr.de>; Mon, 12 Aug 2024 03:43:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sdK5V-0004P9-MH;
	Mon, 12 Aug 2024 01:43:10 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sdK5U-0004P0-6s
 for linux1394-devel@lists.sourceforge.net;
 Mon, 12 Aug 2024 01:43:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=d+Q8xmS6L9yVQUeDWKp7OwnnCRhmxeh/w4QcD6dPneg=; b=Zj7n4wy+uHr2Hv4gYx1TZQ1d5f
 DaEeCvOcZbln9alcH+eAWnAlWIugVWatqXhp5Uc5ZkRsnuCIc+OLHYuNHZKdtCuXp+BVO+FB1xT5j
 n8HVchdZ5OMcZtAyAxmhR5PEgtizr2B9y57EJ0g+FuWdwN6yytgCBozPj/bdgx/Puo60=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=d+Q8xmS6L9yVQUeDWKp7OwnnCRhmxeh/w4QcD6dPneg=; b=HoDAcOCqtK3w8UHGUDkYlYZ1u8
 J6D8TEJV2OLMPVz56Hn0vPJRoAMSHy44uziCHb/oSQdrR5C0tcOyGJ1RuO6i8lhE5ryZ/82BE600/
 jByGTjk9ENkpHvz6Zx7iwigH8jvknma5yZ2ORqIfEM1T2dZ1+TiACzTMb+0mVfIoXHlU=;
Received: from fout7-smtp.messagingengine.com ([103.168.172.150])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sdK5T-0006AA-SQ for linux1394-devel@lists.sourceforge.net;
 Mon, 12 Aug 2024 01:43:08 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailfout.nyi.internal (Postfix) with ESMTP id 4C4A0138CCB0;
 Sun, 11 Aug 2024 21:42:57 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Sun, 11 Aug 2024 21:42:57 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1723426977; x=
 1723513377; bh=d+Q8xmS6L9yVQUeDWKp7OwnnCRhmxeh/w4QcD6dPneg=; b=F
 tb8xj+fz5gAeltKKXo71CJsgc+Eer0cl1tywhxKkb0CAYWR807qrZKgfW+nHWCLt
 AGi4rZ0l/L/mXNuhqsSr9F4KNShGCAvc7sqhvjgj2evZtoyKYtl39UHkrsIuK3Sh
 jcixFH4wQX2pbwAtHgKTc8rp13ssZa/9u+J6kFSl8BweTMLITDZrD5F51akCGe0q
 5O5EnyEDkvu7rPkFcbjSHe4mfwoZyTctCDkGXGFkFpw6BUxSAnSO/awvoMEYkysv
 rLEjfmlSVjzWw+5JRrDJPFvFbPThHZ8lxksKrX+4eUZSvhiewDJNOWkvHm5BXN0i
 SYTFdE/JqYspkvAYg+Etg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1723426977; x=
 1723513377; bh=d+Q8xmS6L9yVQUeDWKp7OwnnCRhmxeh/w4QcD6dPneg=; b=E
 uK/Fy7oAqLdKpnJtwbXlrqXII2WB3HfG01D9L2K03df3z4/1mPZKYjpV+bM/EPNf
 /0DJqqFwoJy11O3tlexCIeJ4X/he/W/91KGjLizR4eC6WQ0vOFle4cNw8NMOS/YK
 f+c9cjK+ZGkR78pQNOciTZYBtXxToF+UePSInzZ8TaN2/OAMxu0aO9o2mWGBRjW3
 Yf5/Z34rHCf/SfwfRrXDEtv4jrSho34AtXZnP5wuYxqAQXEuQUXBCtO9O8EK1ffz
 cgLwf/xDF+rTHguWO5m+9BQTJ/C/eLfrcsr+y9PdKAL1wlTYjeajM9Q1ULM7ZqJb
 oR1UjDKoCf0ba/5KOccOw==
X-ME-Sender: <xms:oWi5ZnD8yCu1pGo6mqRiTFnTzeziCmmIO90-DkDpKBEgZ2eQKoC4mQ>
 <xme:oWi5Ztg3llYDcX7T1QnBVPDiYf6DdWQ2Oy4g1tW17KFz_CN4Ov42COP8dQSDmIyd7
 sOW_eX6ldGXxTwmls4>
X-ME-Received: <xmr:oWi5ZikvopaskXT1vPjSwM4du6ugnVDg4ToDPaajGFJx6J66kgJ22z4kCmH8eVvGBSTrLPa5JJFDKrGMCm5m3POtpOu1eYH3Qq596u5LHWOn9w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrleelgdehudcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdpuffr
 tefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecunecujfgurhephffvvefuff
 fkofgjfhgggfestdekredtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhho
 thhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrth
 htvghrnhepvdejgfejuedvgfduudekleevtefgtdevhfdtffefiefgveeuteffiedvffek
 vddtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepoh
 dqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtohepvddp
 mhhouggvpehsmhhtphhouhhtpdhrtghpthhtoheplhhinhhugidufeelgedquggvvhgvlh
 eslhhishhtshdrshhouhhrtggvfhhorhhgvgdrnhgvthdprhgtphhtthhopehlihhnuhig
 qdhkvghrnhgvlhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:oWi5ZpxWHCbYzD68YXyZqFVJMfh141NnTWUzms47DDKTWoeMypxnwQ>
 <xmx:oWi5ZsTM9AurROQgxpDyF4e91ZEvsbJpC6x5fuQXftF_e_VOGM5MhQ>
 <xmx:oWi5ZsbjyUThU-_TCSEL5ojtSMHVKKWUvA4KMHad2QMbSMEGoKlSCw>
 <xmx:oWi5ZtRwv81JnWh1inBB6r7lI7G104xBdT2CQCo0nqL1ZhVaUedUbw>
 <xmx:oWi5Zncu26Zh7TDVVzHO2k0f2YJjWzFwoITj-h_w9LWkmkE49m-x_kKL>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 11 Aug 2024 21:42:56 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 1/2] firewire: core: replace IDR with XArray to maintain
 fw_device
Date: Mon, 12 Aug 2024 10:42:50 +0900
Message-ID: <20240812014251.165492-2-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240812014251.165492-1-o-takashi@sakamocchi.jp>
References: <20240812014251.165492-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In core function, the instances of fw_device corresponding
 to firewire device node in system are maintained by IDR. As of kernel v6.0,
 IDR has been superseded by XArray and deprecated. This commit replaces the
 usage of IDR with XArray to maintain the device instances. The instance of
 XArray is allocated statically, and initialized with XA_FLAGS_ALLOC so that
 the index of allocated e [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [103.168.172.150 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [103.168.172.150 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sdK5T-0006AA-SQ
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
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

In core function, the instances of fw_device corresponding to firewire device
node in system are maintained by IDR. As of kernel v6.0, IDR has been
superseded by XArray and deprecated.

This commit replaces the usage of IDR with XArray to maintain the device
instances. The instance of XArray is allocated statically, and
initialized with XA_FLAGS_ALLOC so that the index of allocated entry starts
with zero and available as the minor identifier of device node.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-device.c      | 21 +++++++++++----------
 drivers/firewire/core-transaction.c |  3 +--
 drivers/firewire/core.h             |  3 ++-
 3 files changed, 14 insertions(+), 13 deletions(-)

diff --git a/drivers/firewire/core-device.c b/drivers/firewire/core-device.c
index bec7e05f6ab8..9f3276aa463a 100644
--- a/drivers/firewire/core-device.c
+++ b/drivers/firewire/core-device.c
@@ -12,7 +12,6 @@
 #include <linux/errno.h>
 #include <linux/firewire.h>
 #include <linux/firewire-constants.h>
-#include <linux/idr.h>
 #include <linux/jiffies.h>
 #include <linux/kobject.h>
 #include <linux/list.h>
@@ -813,7 +812,7 @@ static int shutdown_unit(struct device *device, void *data)
  */
 DECLARE_RWSEM(fw_device_rwsem);
 
-DEFINE_IDR(fw_device_idr);
+DEFINE_XARRAY_ALLOC(fw_device_xa);
 int fw_cdev_major;
 
 struct fw_device *fw_device_get_by_devt(dev_t devt)
@@ -822,7 +821,7 @@ struct fw_device *fw_device_get_by_devt(dev_t devt)
 
 	guard(rwsem_read)(&fw_device_rwsem);
 
-	device = idr_find(&fw_device_idr, MINOR(devt));
+	device = xa_load(&fw_device_xa, MINOR(devt));
 	if (device)
 		fw_device_get(device);
 
@@ -858,7 +857,6 @@ static void fw_device_shutdown(struct work_struct *work)
 {
 	struct fw_device *device =
 		container_of(work, struct fw_device, work.work);
-	int minor = MINOR(device->device.devt);
 
 	if (time_before64(get_jiffies_64(),
 			  device->card->reset_jiffies + SHUTDOWN_DELAY)
@@ -877,7 +875,7 @@ static void fw_device_shutdown(struct work_struct *work)
 	device_unregister(&device->device);
 
 	scoped_guard(rwsem_write, &fw_device_rwsem)
-		idr_remove(&fw_device_idr, minor);
+		xa_erase(&fw_device_xa, MINOR(device->device.devt));
 
 	fw_device_put(device);
 }
@@ -1049,7 +1047,8 @@ static void fw_device_init(struct work_struct *work)
 		container_of(work, struct fw_device, work.work);
 	struct fw_card *card = device->card;
 	struct device *revived_dev;
-	int minor, ret;
+	u32 minor;
+	int ret;
 
 	/*
 	 * All failure paths here set node->data to NULL, so that we
@@ -1087,9 +1086,11 @@ static void fw_device_init(struct work_struct *work)
 	device_initialize(&device->device);
 
 	fw_device_get(device);
+
 	scoped_guard(rwsem_write, &fw_device_rwsem) {
-		minor = idr_alloc(&fw_device_idr, device, 0, 1 << MINORBITS, GFP_KERNEL);
-		if (minor < 0)
+		// The index of allocated entry is used for minor identifier of device node.
+		ret = xa_alloc(&fw_device_xa, &minor, device, XA_LIMIT(0, MINORMASK), GFP_KERNEL);
+		if (ret < 0)
 			goto error;
 	}
 
@@ -1152,9 +1153,9 @@ static void fw_device_init(struct work_struct *work)
 
  error_with_cdev:
 	scoped_guard(rwsem_write, &fw_device_rwsem)
-		idr_remove(&fw_device_idr, minor);
+		xa_erase(&fw_device_xa, minor);
  error:
-	fw_device_put(device);		/* fw_device_idr's reference */
+	fw_device_put(device);		// fw_device_xa's reference.
 
 	put_device(&device->device);	/* our reference */
 }
diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index 14af84541e83..e141d24a7644 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -13,7 +13,6 @@
 #include <linux/firewire-constants.h>
 #include <linux/fs.h>
 #include <linux/init.h>
-#include <linux/idr.h>
 #include <linux/jiffies.h>
 #include <linux/kernel.h>
 #include <linux/list.h>
@@ -1359,7 +1358,7 @@ static void __exit fw_core_cleanup(void)
 	unregister_chrdev(fw_cdev_major, "firewire");
 	bus_unregister(&fw_bus_type);
 	destroy_workqueue(fw_workqueue);
-	idr_destroy(&fw_device_idr);
+	xa_destroy(&fw_device_xa);
 }
 
 module_init(fw_core_init);
diff --git a/drivers/firewire/core.h b/drivers/firewire/core.h
index 189e15e6ba82..8cace026090c 100644
--- a/drivers/firewire/core.h
+++ b/drivers/firewire/core.h
@@ -8,6 +8,7 @@
 #include <linux/fs.h>
 #include <linux/list.h>
 #include <linux/idr.h>
+#include <linux/xarray.h>
 #include <linux/mm_types.h>
 #include <linux/rwsem.h>
 #include <linux/slab.h>
@@ -133,7 +134,7 @@ void fw_cdev_handle_phy_packet(struct fw_card *card, struct fw_packet *p);
 /* -device */
 
 extern struct rw_semaphore fw_device_rwsem;
-extern struct idr fw_device_idr;
+extern struct xarray fw_device_xa;
 extern int fw_cdev_major;
 
 static inline struct fw_device *fw_device_get(struct fw_device *device)
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
