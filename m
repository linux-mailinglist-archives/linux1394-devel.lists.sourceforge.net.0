Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 011E594FA72
	for <lists+linux1394-devel@lfdr.de>; Tue, 13 Aug 2024 01:52:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sdeq1-00065i-Rw;
	Mon, 12 Aug 2024 23:52:33 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sdepz-00065T-IZ
 for linux1394-devel@lists.sourceforge.net;
 Mon, 12 Aug 2024 23:52:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AGCPcXuZ+EA8kPdWP5AdSF60xmqg9P1trpkWAYoUGEs=; b=Z6x4ZDwll9qZukeDKZHeaZ28l1
 +Ei400uFBGaU8G71kJ+fnfFcUtePDr0ldofE9MbkxIJp/hLd/HvzVjWbz148CWq0uNe7fskbI9JrY
 RVEcKubABz2kXrco8BxdarxhUdXtrLttxZOPyoEzP/INFaY9PTY8QSPBoB2wr9uUN0hs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AGCPcXuZ+EA8kPdWP5AdSF60xmqg9P1trpkWAYoUGEs=; b=AtuNMqwezzIMPWUwUzVahwEmSS
 0LhxrYiXcF7T9BfwaAxKyIVSfQWhiJv4aGZ7fNxyWB6/KHznlZRwmQdZRZH66DBl92yGH2Jwne++5
 deoLEwykpCdYiNCCpY6nGIvjwvr2XxXHo8iO5DUg6AnxKiy4k9EVCwQgofwYHMqt7i84=;
Received: from fhigh8-smtp.messagingengine.com ([103.168.172.159])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sdepy-0002E4-Lj for linux1394-devel@lists.sourceforge.net;
 Mon, 12 Aug 2024 23:52:31 +0000
Received: from phl-compute-07.internal (phl-compute-07.nyi.internal
 [10.202.2.47])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 1BE981151B66;
 Mon, 12 Aug 2024 19:52:20 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by phl-compute-07.internal (MEProxy); Mon, 12 Aug 2024 19:52:20 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1723506740; x=
 1723593140; bh=AGCPcXuZ+EA8kPdWP5AdSF60xmqg9P1trpkWAYoUGEs=; b=Y
 j+NBlbMicM5yraVen81NvyprMxGoB2u/JKxxtxNOoHzRjXV9h1Mr4OvjHyH3qma0
 V+TmeOMeJ4VrTyfk0H736ioGrWIlwrCjwkaKYMlu2sdrlRVRsCWRQ+NRYEa15uNb
 x49iWoKdgOgpftVkrMc9IHLxSOD0NDbbRCQwK9VY5NQWtKHUxGac1wkG2k5zgWdd
 kKvHKWkUg1LiS/P67b6rPG3lLe7Taz83ys513En5lr1UvdP/Gag3O47+no1mvFF3
 a5Hogz9jeRlCykTz3NdG6J9bldnhE4acBktxsQ6YDiHEnYs7Na83rDwoaBTfcX0g
 O2tWxuPdw26afeKQ9oM8w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1723506740; x=
 1723593140; bh=AGCPcXuZ+EA8kPdWP5AdSF60xmqg9P1trpkWAYoUGEs=; b=t
 gMS1M/1oZ3c+jAsRYbMdyJmoWXICDdDpneYCYRVOTgHspDK7D8RNq+hBvgmgNOoA
 Y00Nm1mlmWYSHcshavfR+xLbJWVbh3nkHNzy/nrFvHNxkHYKQarC0Rclau5alegQ
 KKWKwzKo4zgHpyh+DThHX6fV7jYqjrYcRswYcvOYvFu2KaK+uIKftcyJAuXM3OJK
 LhtPo72IRE/NWIiAgaVITF1yDCC8X9xneZCH+Par/+BIbP4NdAjWArMLk8pETytV
 0VhEhuLNRU1ErizdKieHYgkwIR7uKyeE3L8TwDdwVCLOnm3T1gxQULtIuLKNc5wS
 wuTBimEve7o1o6I8CUnOA==
X-ME-Sender: <xms:M6C6Zo1bIR9ck1-rQ50PNCQeg27NlpYtGHLDb0t1fDAIyXjDvlxUgQ>
 <xme:M6C6ZjHFZi2qZfDHRy_E1yCOFI8XjPXoGXxzD2FqMeR_CWMv8G7NzJ1GUeQqEpqYe
 p8EmR-Bf3bSZXv8sGw>
X-ME-Received: <xmr:M6C6Zg5UeOhYdgp9kRzip65oCFfjRhAbljMPoDbDxtFUSFN3N5qUKwWCzz1GD2-M7jXOvYR2xAPbQS_r-7bfG37oMyDYS2HSXxY3hs9Y8e94pw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddruddtuddgvdekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevuf
 ffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghm
 ohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrg
 htthgvrhhnpedvjefgjeeuvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdff
 kedvtdenucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpe
 hoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopedv
 pdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvg
 hlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhu
 gidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:NKC6Zh3Ki_zL_PxCazAGYAchrZpvRPEsaA667VeM5QUEVryHryjteQ>
 <xmx:NKC6ZrHgGtQDI7IMUf-rmyrj9Dg7avvb7Bhnjb45xC5hwgHkurTDpA>
 <xmx:NKC6Zq9NY5fH0FqDByw2BLdQBDrAR1OQpCdpQp4i22erdy_SahzUjw>
 <xmx:NKC6ZgnfBH_wJkLynyifj6-ulRepNivM4Ucf3zSV7JXWZOQO6P6dbA>
 <xmx:NKC6ZgTzZC4nhjZ2TDTFIUPc7SSCwVKjjfULqkp4pR0SVZ0YWL_l8Q6u>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 12 Aug 2024 19:52:18 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 5/5] firewire: core: use xarray instead of idr to maintain
 client resource
Date: Tue, 13 Aug 2024 08:52:10 +0900
Message-ID: <20240812235210.28458-6-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240812235210.28458-1-o-takashi@sakamocchi.jp>
References: <20240812235210.28458-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In core function,
 the instances of some client resource structures
 are maintained by IDR. As of kernel v6.0, IDR has been superseded by XArray
 and deprecated. This commit replaces the usage of IDR with XArray to maintain
 the resource instances. The instance of XArray is allocated per client with
 XA_FLAGS_ALLOC1 so that the index of allocated entry is greate [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [103.168.172.159 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sdepy-0002E4-Lj
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

In core function, the instances of some client resource structures are
maintained by IDR. As of kernel v6.0, IDR has been superseded by XArray
and deprecated.

This commit replaces the usage of IDR with XArray to maintain the
resource instances. The instance of XArray is allocated per client with
XA_FLAGS_ALLOC1 so that the index of allocated entry is greater than zero
and returns to user space client as handle of the resource.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-cdev.c | 66 +++++++++++++++++++-----------------
 drivers/firewire/core.h      |  1 -
 2 files changed, 35 insertions(+), 32 deletions(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index 83d25327c1d3..3ea220d96c31 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -14,7 +14,6 @@
 #include <linux/errno.h>
 #include <linux/firewire.h>
 #include <linux/firewire-cdev.h>
-#include <linux/idr.h>
 #include <linux/irqflags.h>
 #include <linux/jiffies.h>
 #include <linux/kernel.h>
@@ -54,7 +53,7 @@ struct client {
 
 	spinlock_t lock;
 	bool in_shutdown;
-	struct idr resource_idr;
+	struct xarray resource_xa;
 	struct list_head event_list;
 	wait_queue_head_t wait;
 	wait_queue_head_t tx_flush_wait;
@@ -297,7 +296,7 @@ static int fw_device_op_open(struct inode *inode, struct file *file)
 
 	client->device = device;
 	spin_lock_init(&client->lock);
-	idr_init(&client->resource_idr);
+	xa_init_flags(&client->resource_xa, XA_FLAGS_ALLOC1 | XA_FLAGS_LOCK_BH);
 	INIT_LIST_HEAD(&client->event_list);
 	init_waitqueue_head(&client->wait);
 	init_waitqueue_head(&client->tx_flush_wait);
@@ -407,7 +406,7 @@ static void queue_bus_reset_event(struct client *client)
 {
 	struct bus_reset_event *e;
 	struct client_resource *resource;
-	int id;
+	unsigned long index;
 
 	e = kzalloc(sizeof(*e), GFP_KERNEL);
 	if (e == NULL)
@@ -420,7 +419,7 @@ static void queue_bus_reset_event(struct client *client)
 
 	guard(spinlock_irq)(&client->lock);
 
-	idr_for_each_entry(&client->resource_idr, resource, id) {
+	xa_for_each(&client->resource_xa, index, resource) {
 		if (is_iso_resource(resource))
 			schedule_iso_resource(to_iso_resource(resource), 0);
 	}
@@ -501,31 +500,33 @@ static int ioctl_get_info(struct client *client, union ioctl_arg *arg)
 	return ret ? -EFAULT : 0;
 }
 
-static int add_client_resource(struct client *client,
-			       struct client_resource *resource, gfp_t gfp_mask)
+static int add_client_resource(struct client *client, struct client_resource *resource,
+			       gfp_t gfp_mask)
 {
-	bool preload = gfpflags_allow_blocking(gfp_mask);
 	int ret;
 
-	if (preload)
-		idr_preload(gfp_mask);
-
 	scoped_guard(spinlock_irqsave, &client->lock) {
-		if (client->in_shutdown)
+		u32 index;
+
+		if (client->in_shutdown) {
 			ret = -ECANCELED;
-		else
-			ret = idr_alloc(&client->resource_idr, resource, 0, 0, GFP_NOWAIT);
+		} else {
+			if (gfpflags_allow_blocking(gfp_mask)) {
+				ret = xa_alloc(&client->resource_xa, &index, resource, xa_limit_32b,
+					       GFP_NOWAIT);
+			} else {
+				ret = xa_alloc_bh(&client->resource_xa, &index, resource,
+						  xa_limit_32b, GFP_NOWAIT);
+			}
+		}
 		if (ret >= 0) {
-			resource->handle = ret;
+			resource->handle = index;
 			client_get(client);
 			if (is_iso_resource(resource))
 				schedule_iso_resource(to_iso_resource(resource), 0);
 		}
 	}
 
-	if (preload)
-		idr_preload_end();
-
 	return ret < 0 ? ret : 0;
 }
 
@@ -533,17 +534,18 @@ static int release_client_resource(struct client *client, u32 handle,
 				   client_resource_release_fn_t release,
 				   struct client_resource **return_resource)
 {
+	unsigned long index = handle;
 	struct client_resource *resource;
 
 	scoped_guard(spinlock_irq, &client->lock) {
 		if (client->in_shutdown)
 			return -EINVAL;
 
-		resource = idr_find(&client->resource_idr, handle);
+		resource = xa_load(&client->resource_xa, index);
 		if (!resource || resource->release != release)
 			return -EINVAL;
 
-		idr_remove(&client->resource_idr, handle);
+		xa_erase(&client->resource_xa, handle);
 	}
 
 	if (return_resource)
@@ -566,9 +568,10 @@ static void complete_transaction(struct fw_card *card, int rcode, u32 request_ts
 {
 	struct outbound_transaction_event *e = data;
 	struct client *client = e->client;
+	unsigned long index = e->r.resource.handle;
 
 	scoped_guard(spinlock_irqsave, &client->lock) {
-		idr_remove(&client->resource_idr, e->r.resource.handle);
+		xa_erase(&client->resource_xa, index);
 		if (client->in_shutdown)
 			wake_up(&client->tx_flush_wait);
 	}
@@ -619,7 +622,7 @@ static void complete_transaction(struct fw_card *card, int rcode, u32 request_ts
 		break;
 	}
 
-	/* Drop the idr's reference */
+	// Drop the xarray's reference.
 	client_put(client);
 }
 
@@ -1317,6 +1320,7 @@ static void iso_resource_work(struct work_struct *work)
 	struct iso_resource *r =
 			container_of(work, struct iso_resource, work.work);
 	struct client *client = r->client;
+	unsigned long index = r->resource.handle;
 	int generation, channel, bandwidth, todo;
 	bool skip, free, success;
 
@@ -1351,7 +1355,7 @@ static void iso_resource_work(struct work_struct *work)
 			todo == ISO_RES_ALLOC_ONCE);
 	/*
 	 * Is this generation outdated already?  As long as this resource sticks
-	 * in the idr, it will be scheduled again for a newer generation or at
+	 * in the xarray, it will be scheduled again for a newer generation or at
 	 * shutdown.
 	 */
 	if (channel == -EAGAIN &&
@@ -1366,10 +1370,10 @@ static void iso_resource_work(struct work_struct *work)
 		if (r->todo == ISO_RES_ALLOC)
 			r->todo = ISO_RES_REALLOC;
 		// Allocation or reallocation failure?  Pull this resource out of the
-		// idr and prepare for deletion, unless the client is shutting down.
+		// xarray and prepare for deletion, unless the client is shutting down.
 		if (r->todo == ISO_RES_REALLOC && !success &&
 		    !client->in_shutdown &&
-		    idr_remove(&client->resource_idr, r->resource.handle)) {
+		    xa_erase(&client->resource_xa, index)) {
 			client_put(client);
 			free = true;
 		}
@@ -1839,11 +1843,11 @@ static int fw_device_op_mmap(struct file *file, struct vm_area_struct *vma)
 static bool has_outbound_transactions(struct client *client)
 {
 	struct client_resource *resource;
-	int id;
+	unsigned long index;
 
 	guard(spinlock_irq)(&client->lock);
 
-	idr_for_each_entry(&client->resource_idr, resource, id) {
+	xa_for_each(&client->resource_xa, index, resource) {
 		if (is_outbound_transaction_resource(resource))
 			return true;
 	}
@@ -1856,7 +1860,7 @@ static int fw_device_op_release(struct inode *inode, struct file *file)
 	struct client *client = file->private_data;
 	struct event *event, *next_event;
 	struct client_resource *resource;
-	int id;
+	unsigned long index;
 
 	scoped_guard(spinlock_irq, &client->device->card->lock)
 		list_del(&client->phy_receiver_link);
@@ -1870,17 +1874,17 @@ static int fw_device_op_release(struct inode *inode, struct file *file)
 	if (client->buffer.pages)
 		fw_iso_buffer_destroy(&client->buffer, client->device->card);
 
-	/* Freeze client->resource_idr and client->event_list */
+	// Freeze client->resource_xa and client->event_list.
 	scoped_guard(spinlock_irq, &client->lock)
 		client->in_shutdown = true;
 
 	wait_event(client->tx_flush_wait, !has_outbound_transactions(client));
 
-	idr_for_each_entry(&client->resource_idr, resource, id) {
+	xa_for_each(&client->resource_xa, index, resource) {
 		resource->release(client, resource);
 		client_put(client);
 	}
-	idr_destroy(&client->resource_idr);
+	xa_destroy(&client->resource_xa);
 
 	list_for_each_entry_safe(event, next_event, &client->event_list, link)
 		kfree(event);
diff --git a/drivers/firewire/core.h b/drivers/firewire/core.h
index 8cace026090c..57d101c01e36 100644
--- a/drivers/firewire/core.h
+++ b/drivers/firewire/core.h
@@ -7,7 +7,6 @@
 #include <linux/dma-mapping.h>
 #include <linux/fs.h>
 #include <linux/list.h>
-#include <linux/idr.h>
 #include <linux/xarray.h>
 #include <linux/mm_types.h>
 #include <linux/rwsem.h>
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
