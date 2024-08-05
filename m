Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E714F9477A3
	for <lists+linux1394-devel@lfdr.de>; Mon,  5 Aug 2024 10:54:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1satUF-00070R-VK;
	Mon, 05 Aug 2024 08:54:39 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1satUD-000701-9t
 for linux1394-devel@lists.sourceforge.net;
 Mon, 05 Aug 2024 08:54:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2M63XuIcnOs2zgB0Of1R5tPvEt2hh1y3Apg8Rw8WgRE=; b=ikzQYvAbWBVU47fcezL1v4JD9Q
 DG5n6WvEnm1DtKjXYa1TTn2O2D2DPvOnOIhshePgR2Ty0JjxGionTWOxDh5Ay1icsrnVwvT16xoSm
 h0jKjJGdivDwma1zB7bqzwsNL4mg8/YZWoBoHabrFPSZfgn9YflyOMnN2UvOIBO0J9Vk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2M63XuIcnOs2zgB0Of1R5tPvEt2hh1y3Apg8Rw8WgRE=; b=jCOZEvoM1bm0dX+BfkRjtZJlbl
 U9QTzcwJDBIXL6XyCzYZcm4Bg+Udh2vfv2qZBktNgMxfIN4sP27s3RIPCKe0yilBjOptVyHCMpGrx
 Woi8zdHNnQCeIW9e/Tq4iATGDpE8xeW4/+f/Yg3bSmJMKMAwCZ42Ok6goipDLrQQOn1A=;
Received: from fout7-smtp.messagingengine.com ([103.168.172.150])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1satUC-0002rr-Br for linux1394-devel@lists.sourceforge.net;
 Mon, 05 Aug 2024 08:54:37 +0000
Received: from compute8.internal (compute8.nyi.internal [10.202.2.227])
 by mailfout.nyi.internal (Postfix) with ESMTP id C6C8C138FD80;
 Mon,  5 Aug 2024 04:54:30 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute8.internal (MEProxy); Mon, 05 Aug 2024 04:54:30 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1722848070; x=
 1722934470; bh=2M63XuIcnOs2zgB0Of1R5tPvEt2hh1y3Apg8Rw8WgRE=; b=A
 n7FRkSW9KgNiVhNUUszlClnB7Un7ljhFcoJdogiGGBD+And06BBvDvURHYVtkJWf
 ywD3qKMyqDpjaLol7UM1HDoyZ71o+y5T5VlcwSNiZ+s3LqkSyhHQV2YbBwFbzk2C
 Vc3XhLK1gRDjFnKFt3g1qcmw3X5YLADCxfF9+FQZVJ/tZ2fkXTJUGni8dE1k+VyZ
 I3OSGtz5dAWoj9rCE3MMNSZRV6LF98Tjp1Y/6YcH7y5sH3E36V3lOWMjtQBR07X2
 25ggVRKpnk5JL951RFyOHJOCGAUNzRlCywX7eezCz+cPVGvweY6QLqYXIqrrAHoL
 xXso4S6esRxBS52bwyB+A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1722848070; x=
 1722934470; bh=2M63XuIcnOs2zgB0Of1R5tPvEt2hh1y3Apg8Rw8WgRE=; b=G
 jpwNPR8DwgmcddZy2/en9D0T7bmnElNS/qdMMffJoq8lQwgYRKm/KehiRvWWdahL
 NMJmgoh6AoocD4lByVupQsWadlrsGJZDirJYuypAu/S0KpLDNvOcv0KxUYvBEorZ
 7T+Pg4XzwdGDNzjXQU4Xdc3n6m965/g9U9HqwGo97sEgBJ/QA4eRqi6S7Sl1PDq6
 9VPHI9rup6g+MVQ0wbVKHNZWKbmWtnJY4HO695pjZqAAh+v6ZzAaPkNaslmyzLis
 r0hdBU6gSsPI13KpKWfLZQWUdoxChMfOvePKzSmz+5pc2AS67JIJdRAxHWd8Uiiw
 XzTEi9bGTWZcv+u19Y6Fg==
X-ME-Sender: <xms:RpOwZkzD98OI3SxWQSbuGWclNDdpynbzNc-KGYrW857AfzSxSmPXtA>
 <xme:RpOwZoSL-kN8tX9GRxt3sE2-mfF6PashrZ3OH-8uMUA1hr1IV8ash3Kcjkg7P0X5b
 YYN8BORCKUwr-yaFIo>
X-ME-Received: <xmr:RpOwZmVXFhgoOJkzKBAlV676Pxjqe5jvzNIsZu4lZLZ9Q1y9Is0yYyV48ktRzFr24IaHjWH--FOtKP2_M5DhiKtAgHnkEi76ZGUMv1CalPg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrkeeigddtlecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejue
 dvgfduudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgv
 rhfuihiivgepvdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtoheptd
X-ME-Proxy: <xmx:RpOwZihgB8C6H5x-_OSuQnS_isB5V6KM30G1YtsQVhf91wB0q6xcMQ>
 <xmx:RpOwZmClq_QPZ9wjLleDsa3cF4dLkCN7U3EvA3bzNB4zgADzs-xUgA>
 <xmx:RpOwZjJGEJkwy3dFna7Z53vYc8UYednz7lfK5yDF8VCtAYipD6o3cg>
 <xmx:RpOwZtBgtE9zIDAXBIHxTVb99Jg6TL3s3MAdq4EsCNpHqoSWWqUKLw>
 <xmx:RpOwZpP-gWn9sawOlRK7LSUkoU_-I6Hp6zOksYjjn7O_k3F7Oh9aBxNG>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 5 Aug 2024 04:54:29 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH v2 14/17] firewire: core: use guard macro to maintain
 properties of fw_card
Date: Mon,  5 Aug 2024 17:54:05 +0900
Message-ID: <20240805085408.251763-15-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240805085408.251763-1-o-takashi@sakamocchi.jp>
References: <20240805085408.251763-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The core functions uses spinlock in instance of fw_card
 structure
 to protect concurrent access to properties in the instance. This commit uses
 guard macro to maintain the spinlock. Signed-off-by: Takashi Sakamoto
 <o-takashi@sakamocchi.jp>
 --- drivers/firewire/core-card.c | 16 +++++++---------
 drivers/firewire/core-cdev.c
 | 4 +--- drivers/firewire/core-device.c | 10 +++------- dr [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [103.168.172.150 listed in wl.mailspike.net]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [103.168.172.150 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.150 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.150 listed in sa-trusted.bondedsender.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1satUC-0002rr-Br
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

The core functions uses spinlock in instance of fw_card structure to
protect concurrent access to properties in the instance.

This commit uses guard macro to maintain the spinlock.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-card.c        | 16 +++++++---------
 drivers/firewire/core-cdev.c        |  4 +---
 drivers/firewire/core-device.c      | 10 +++-------
 drivers/firewire/core-iso.c         |  5 ++---
 drivers/firewire/core-topology.c    |  5 +----
 drivers/firewire/core-transaction.c | 12 +++++-------
 6 files changed, 19 insertions(+), 33 deletions(-)

diff --git a/drivers/firewire/core-card.c b/drivers/firewire/core-card.c
index 79a5b19e9d18..e80b762888fa 100644
--- a/drivers/firewire/core-card.c
+++ b/drivers/firewire/core-card.c
@@ -374,11 +374,11 @@ static void bm_work(struct work_struct *work)
 
 		bm_id = be32_to_cpu(transaction_data[0]);
 
-		spin_lock_irq(&card->lock);
-		if (rcode == RCODE_COMPLETE && generation == card->generation)
-			card->bm_node_id =
-			    bm_id == 0x3f ? local_id : 0xffc0 | bm_id;
-		spin_unlock_irq(&card->lock);
+		scoped_guard(spinlock_irq, &card->lock) {
+			if (rcode == RCODE_COMPLETE && generation == card->generation)
+				card->bm_node_id =
+				    bm_id == 0x3f ? local_id : 0xffc0 | bm_id;
+		}
 
 		if (rcode == RCODE_COMPLETE && bm_id != 0x3f) {
 			/* Somebody else is BM.  Only act as IRM. */
@@ -707,7 +707,6 @@ EXPORT_SYMBOL_GPL(fw_card_release);
 void fw_core_remove_card(struct fw_card *card)
 {
 	struct fw_card_driver dummy_driver = dummy_driver_template;
-	unsigned long flags;
 
 	card->driver->update_phy_reg(card, 4,
 				     PHY_LINK_ACTIVE | PHY_CONTENDER, 0);
@@ -721,9 +720,8 @@ void fw_core_remove_card(struct fw_card *card)
 	dummy_driver.stop_iso		= card->driver->stop_iso;
 	card->driver = &dummy_driver;
 
-	spin_lock_irqsave(&card->lock, flags);
-	fw_destroy_nodes(card);
-	spin_unlock_irqrestore(&card->lock, flags);
+	scoped_guard(spinlock_irqsave, &card->lock)
+		fw_destroy_nodes(card);
 
 	/* Wait for all users, especially device workqueue jobs, to finish. */
 	fw_card_put(card);
diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index f32f8667ef2c..672a37fa8343 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -354,7 +354,7 @@ static void fill_bus_reset_event(struct fw_cdev_event_bus_reset *event,
 {
 	struct fw_card *card = client->device->card;
 
-	spin_lock_irq(&card->lock);
+	guard(spinlock_irq)(&card->lock);
 
 	event->closure	     = client->bus_reset_closure;
 	event->type          = FW_CDEV_EVENT_BUS_RESET;
@@ -364,8 +364,6 @@ static void fill_bus_reset_event(struct fw_cdev_event_bus_reset *event,
 	event->bm_node_id    = card->bm_node_id;
 	event->irm_node_id   = card->irm_node->node_id;
 	event->root_node_id  = card->root_node->node_id;
-
-	spin_unlock_irq(&card->lock);
 }
 
 static void for_each_client(struct fw_device *device,
diff --git a/drivers/firewire/core-device.c b/drivers/firewire/core-device.c
index d695ec2f1efe..bec7e05f6ab8 100644
--- a/drivers/firewire/core-device.c
+++ b/drivers/firewire/core-device.c
@@ -886,16 +886,14 @@ static void fw_device_release(struct device *dev)
 {
 	struct fw_device *device = fw_device(dev);
 	struct fw_card *card = device->card;
-	unsigned long flags;
 
 	/*
 	 * Take the card lock so we don't set this to NULL while a
 	 * FW_NODE_UPDATED callback is being handled or while the
 	 * bus manager work looks at this node.
 	 */
-	spin_lock_irqsave(&card->lock, flags);
-	device->node->data = NULL;
-	spin_unlock_irqrestore(&card->lock, flags);
+	scoped_guard(spinlock_irqsave, &card->lock)
+		device->node->data = NULL;
 
 	fw_node_put(device->node);
 	kfree(device->config_rom);
@@ -952,7 +950,7 @@ static int lookup_existing_device(struct device *dev, void *data)
 		return 0;
 
 	guard(rwsem_read)(&fw_device_rwsem); // serialize config_rom access
-	spin_lock_irq(&card->lock);  /* serialize node access */
+	guard(spinlock_irq)(&card->lock); // serialize node access
 
 	if (memcmp(old->config_rom, new->config_rom, 6 * 4) == 0 &&
 	    atomic_cmpxchg(&old->state,
@@ -982,8 +980,6 @@ static int lookup_existing_device(struct device *dev, void *data)
 		match = 1;
 	}
 
-	spin_unlock_irq(&card->lock);
-
 	return match;
 }
 
diff --git a/drivers/firewire/core-iso.c b/drivers/firewire/core-iso.c
index b3eda38a36f3..101433b8bb51 100644
--- a/drivers/firewire/core-iso.c
+++ b/drivers/firewire/core-iso.c
@@ -375,9 +375,8 @@ void fw_iso_resource_manage(struct fw_card *card, int generation,
 	u32 channels_lo = channels_mask >> 32;	/* channels 63...32 */
 	int irm_id, ret, c = -EINVAL;
 
-	spin_lock_irq(&card->lock);
-	irm_id = card->irm_node->node_id;
-	spin_unlock_irq(&card->lock);
+	scoped_guard(spinlock_irq, &card->lock)
+		irm_id = card->irm_node->node_id;
 
 	if (channels_hi)
 		c = manage_channel(card, irm_id, generation, channels_hi,
diff --git a/drivers/firewire/core-topology.c b/drivers/firewire/core-topology.c
index 46e6eb287d24..6adadb11962e 100644
--- a/drivers/firewire/core-topology.c
+++ b/drivers/firewire/core-topology.c
@@ -455,11 +455,10 @@ void fw_core_handle_bus_reset(struct fw_card *card, int node_id, int generation,
 			      int self_id_count, u32 *self_ids, bool bm_abdicate)
 {
 	struct fw_node *local_node;
-	unsigned long flags;
 
 	trace_bus_reset_handle(card->index, generation, node_id, bm_abdicate, self_ids, self_id_count);
 
-	spin_lock_irqsave(&card->lock, flags);
+	guard(spinlock_irqsave)(&card->lock);
 
 	/*
 	 * If the selfID buffer is not the immediate successor of the
@@ -500,7 +499,5 @@ void fw_core_handle_bus_reset(struct fw_card *card, int node_id, int generation,
 	} else {
 		update_tree(card, local_node);
 	}
-
-	spin_unlock_irqrestore(&card->lock, flags);
 }
 EXPORT_SYMBOL(fw_core_handle_bus_reset);
diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index 0f58a5d13d28..14af84541e83 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -1160,7 +1160,6 @@ static void handle_registers(struct fw_card *card, struct fw_request *request,
 	int reg = offset & ~CSR_REGISTER_BASE;
 	__be32 *data = payload;
 	int rcode = RCODE_COMPLETE;
-	unsigned long flags;
 
 	switch (reg) {
 	case CSR_PRIORITY_BUDGET:
@@ -1202,10 +1201,10 @@ static void handle_registers(struct fw_card *card, struct fw_request *request,
 		if (tcode == TCODE_READ_QUADLET_REQUEST) {
 			*data = cpu_to_be32(card->split_timeout_hi);
 		} else if (tcode == TCODE_WRITE_QUADLET_REQUEST) {
-			spin_lock_irqsave(&card->lock, flags);
+			guard(spinlock_irqsave)(&card->lock);
+
 			card->split_timeout_hi = be32_to_cpu(*data) & 7;
 			update_split_timeout(card);
-			spin_unlock_irqrestore(&card->lock, flags);
 		} else {
 			rcode = RCODE_TYPE_ERROR;
 		}
@@ -1215,11 +1214,10 @@ static void handle_registers(struct fw_card *card, struct fw_request *request,
 		if (tcode == TCODE_READ_QUADLET_REQUEST) {
 			*data = cpu_to_be32(card->split_timeout_lo);
 		} else if (tcode == TCODE_WRITE_QUADLET_REQUEST) {
-			spin_lock_irqsave(&card->lock, flags);
-			card->split_timeout_lo =
-					be32_to_cpu(*data) & 0xfff80000;
+			guard(spinlock_irqsave)(&card->lock);
+
+			card->split_timeout_lo = be32_to_cpu(*data) & 0xfff80000;
 			update_split_timeout(card);
-			spin_unlock_irqrestore(&card->lock, flags);
 		} else {
 			rcode = RCODE_TYPE_ERROR;
 		}
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
