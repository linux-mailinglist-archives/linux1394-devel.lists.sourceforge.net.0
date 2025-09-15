Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A0B0DB58888
	for <lists+linux1394-devel@lfdr.de>; Tue, 16 Sep 2025 01:48:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cgsjir9L5AJad/K/IU0nG3plf4r0hDzrniu64/ide8o=; b=ByZi2Yh5ybFi1dU4AjuPkb1Q3k
	18qkmcxPQoIK/vykYHIZ7xzZgAxvGQJgTdghtArZZDgUVE8SR+6gMekX0rp+SZ7kdVZHwOO6/v924
	hDojSNsLvrbDy4uacyfj0WjhK3CSRGu0S+DGGnzaCRg1MnbfOGpWX6DTFzOscZfWn0ao=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uyIvS-0000U8-6t;
	Mon, 15 Sep 2025 23:48:02 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uyIvQ-0000Tq-Fn
 for linux1394-devel@lists.sourceforge.net;
 Mon, 15 Sep 2025 23:48:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5jZos+QL9az8uCHYNxTxueQYyMEWprpgi39yg43KbGM=; b=VIZbMOw10gnup/HP+WZ7ShgXjF
 IsOSjrzktMSRbsYo7Fbd2LItn2cBOnrifdFwx0g7S7is2eVb18lkd+0TwjQCygZynHXZGk3BxlDZa
 C0VQRV0YBhVl3QjMtgFlLB/HDc+yEJqaKizFaXc2yPmUzX3dYf/H+NsXcKGeYvuW/LRs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5jZos+QL9az8uCHYNxTxueQYyMEWprpgi39yg43KbGM=; b=gOa9CaWJPqx49NsJx2A4U/z6dN
 mapihT2QEnCALvWnDYcvbf76tH5mhChZYyLyi5uM9wI3W5vojUfXWqpxQ9G89oHAKs5x5JfVnRnFn
 QKdZYk/+FwyELuPW69yoNrO5Vwd7EiAdAramVetMoA6iPvSakfBetZzuuI8tiU+Y1TaI=;
Received: from fhigh-b6-smtp.messagingengine.com ([202.12.124.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uyIvP-0002Jp-Vv for linux1394-devel@lists.sourceforge.net;
 Mon, 15 Sep 2025 23:48:00 +0000
Received: from phl-compute-09.internal (phl-compute-09.internal [10.202.2.49])
 by mailfhigh.stl.internal (Postfix) with ESMTP id 7F9177A01CE;
 Mon, 15 Sep 2025 19:47:54 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-09.internal (MEProxy); Mon, 15 Sep 2025 19:47:54 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1757980074; x=
 1758066474; bh=5jZos+QL9az8uCHYNxTxueQYyMEWprpgi39yg43KbGM=; b=T
 ldeXMoAets+eOFo0jj4Nz6vG1IHhC5P6pPXwTXvS3+NV2r2RRM/IBWNW2KH4AGcw
 RhqAbthmZy5lecLjd3Fj6Xh/dVvKQKb1KTQ0OgT/9iDm8f/oZgLThkoSBd2k7dms
 P57+2l2mggAC+I2U9VguwsdRn/8FgCqgSa4dFjZqNoCFx8ptCwx4gXMApy76FNpw
 2u/ACr1fs60xnr66scsMdFsdJ+e+heaXiu9aa9bxOkgg/qiQde/hbvTtbwk/9lXI
 Z+jqzr9oSSMgOJ1mGeet03jZHMbks7ANPhuvHfGeobZB+kpgWNrkj8DolKVUbiGJ
 7+sRtMRgZP5/UosIr2I3g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1757980074; x=1758066474; bh=5
 jZos+QL9az8uCHYNxTxueQYyMEWprpgi39yg43KbGM=; b=Cq7aHsoGSfq8ft9mF
 7WWoy9RPr5eLHRvl8OZZ0Pjs3Htu5MUJ4Hco6N8rMWCl8anpe3DO4z2hc1y4w/Xk
 JviX5dMaHowA6DBaKpaTvMV0JXnL5CbOncRpMPNFZp/Gu2yhpOMhasEX7AwD6QAe
 8Yjv2L2OPbUpbOkSlcbf94etZq5rAl3kX1YBlE1atQeqyeU/Gvqo752J32vCPFTO
 j7+M7FrtauoduTrj84qKYWjUj8v8LHeqyhnVoDNJnxs0hmN7Om5EJ24oCff8rwTq
 pOTiOubGBEt+8GUz3QF6FIns6c7DBYYTztjlQxL6iH/umYOeAKCUFM65KscgnHod
 aQAqg==
X-ME-Sender: <xms:qqXIaMcviWT1lAB0_OZiSs4Q_cbdbOQFfwDjsb2Iu_UBt57H_qF3TA>
 <xme:qqXIaHKfkJaqh065M0mfkYfQIXXhqcan8dWCCwV5LJYDcHJDAVKMrAPuxT7amqpkn
 Rj7Jq1o_nYGZvpRi-U>
X-ME-Received: <xmr:qqXIaPc6hIG8_ryYuopIhr8fNFHt_VWDhYVY1k59en3i8jfnrS6PWsSJSYibro1Eq-APJPas2MT939eu7OygJfcWWuQAXOSKdHLr_RNzO4DfVg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdefledthecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekredtre
 dttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejuedvgf
 duudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgvrhfu
 ihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkh
 grmhhotggthhhirdhjphdpnhgspghrtghpthhtohepvddpmhhouggvpehsmhhtphhouhht
 pdhrtghpthhtoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtg
 gvfhhorhhgvgdrnhgvthdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghr
 rdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:qqXIaO23j1vunvxTIIiWmBEH6lM0V88wnKnElc8RK-M4vsAA710kjQ>
 <xmx:qqXIaIg1vuGfAsj2DbtA7ktfU0b4iz51i4TZ4wXADMNsg51hfna3Qg>
 <xmx:qqXIaEQD83_dVgf-NzpQehache6F9WuTAaKlOK_XUpk-p-G_TlH3dg>
 <xmx:qqXIaJj_4bK3o6F7OKQYi-WIDy1mURuugTlxNgtVULenMMjr2m40Jw>
 <xmx:qqXIaHC04PR4yHGHeMONZMX4WJNSiHw5HbXnC7xY5ds4KD58L44eKzzL>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 15 Sep 2025 19:47:53 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 2/6] firewire: core: maintain phy packet receivers locally in
 cdev layer
Date: Tue, 16 Sep 2025 08:47:43 +0900
Message-ID: <20250915234747.915922-3-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250915234747.915922-1-o-takashi@sakamocchi.jp>
References: <20250915234747.915922-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The list of receivers for phy packet is used only by cdev
 layer, while it is maintained as a member of fw_card structure. This commit
 maintains the list locally in cdev layer. Signed-off-by: Takashi Sakamoto
 <o-takashi@sakamocchi.jp> --- drivers/firewire/core-card.c | 1 -
 drivers/firewire/core-cdev.c
 | 27 ++++++++++++++++++++------- include/linux/firewire.h | 2 -- 3 files
 c [...] Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1uyIvP-0002Jp-Vv
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

The list of receivers for phy packet is used only by cdev layer, while it
is maintained as a member of fw_card structure.

This commit maintains the list locally in cdev layer.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-card.c |  1 -
 drivers/firewire/core-cdev.c | 27 ++++++++++++++++++++-------
 include/linux/firewire.h     |  2 --
 3 files changed, 20 insertions(+), 10 deletions(-)

diff --git a/drivers/firewire/core-card.c b/drivers/firewire/core-card.c
index b5e01a711145..616abb836ef3 100644
--- a/drivers/firewire/core-card.c
+++ b/drivers/firewire/core-card.c
@@ -556,7 +556,6 @@ void fw_card_initialize(struct fw_card *card,
 	kref_init(&card->kref);
 	init_completion(&card->done);
 	INIT_LIST_HEAD(&card->transaction_list);
-	INIT_LIST_HEAD(&card->phy_receiver_list);
 	spin_lock_init(&card->lock);
 
 	card->local_node = NULL;
diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index 1be8f5eb3e17..112b33099610 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -47,6 +47,9 @@
 #define FW_CDEV_VERSION_AUTO_FLUSH_ISO_OVERFLOW	5
 #define FW_CDEV_VERSION_EVENT_ASYNC_TSTAMP	6
 
+static DEFINE_SPINLOCK(phy_receiver_list_lock);
+static LIST_HEAD(phy_receiver_list);
+
 struct client {
 	u32 version;
 	struct fw_device *device;
@@ -1669,15 +1672,16 @@ static int ioctl_send_phy_packet(struct client *client, union ioctl_arg *arg)
 static int ioctl_receive_phy_packets(struct client *client, union ioctl_arg *arg)
 {
 	struct fw_cdev_receive_phy_packets *a = &arg->receive_phy_packets;
-	struct fw_card *card = client->device->card;
 
 	/* Access policy: Allow this ioctl only on local nodes' device files. */
 	if (!client->device->is_local)
 		return -ENOSYS;
 
-	guard(spinlock_irq)(&card->lock);
+	// NOTE: This can be without irq when we can guarantee that __fw_send_request() for local
+	// destination never runs in any type of IRQ context.
+	scoped_guard(spinlock_irq, &phy_receiver_list_lock)
+		list_move_tail(&client->phy_receiver_link, &phy_receiver_list);
 
-	list_move_tail(&client->phy_receiver_link, &card->phy_receiver_list);
 	client->phy_receiver_closure = a->closure;
 
 	return 0;
@@ -1687,10 +1691,17 @@ void fw_cdev_handle_phy_packet(struct fw_card *card, struct fw_packet *p)
 {
 	struct client *client;
 
-	guard(spinlock_irqsave)(&card->lock);
+	// NOTE: This can be without irqsave when we can guarantee that __fw_send_request() for local
+	// destination never runs in any type of IRQ context.
+	guard(spinlock_irqsave)(&phy_receiver_list_lock);
+
+	list_for_each_entry(client, &phy_receiver_list, phy_receiver_link) {
+		struct inbound_phy_packet_event *e;
+
+		if (client->device->card != card)
+			continue;
 
-	list_for_each_entry(client, &card->phy_receiver_list, phy_receiver_link) {
-		struct inbound_phy_packet_event *e = kmalloc(sizeof(*e) + 8, GFP_ATOMIC);
+		e = kmalloc(sizeof(*e) + 8, GFP_ATOMIC);
 		if (e == NULL)
 			break;
 
@@ -1857,7 +1868,9 @@ static int fw_device_op_release(struct inode *inode, struct file *file)
 	struct client_resource *resource;
 	unsigned long index;
 
-	scoped_guard(spinlock_irq, &client->device->card->lock)
+	// NOTE: This can be without irq when we can guarantee that __fw_send_request() for local
+	// destination never runs in any type of IRQ context.
+	scoped_guard(spinlock_irq, &phy_receiver_list_lock)
 		list_del(&client->phy_receiver_link);
 
 	scoped_guard(mutex, &client->device->client_list_mutex)
diff --git a/include/linux/firewire.h b/include/linux/firewire.h
index d38c6e538e5c..f3260aacf730 100644
--- a/include/linux/firewire.h
+++ b/include/linux/firewire.h
@@ -115,8 +115,6 @@ struct fw_card {
 	int index;
 	struct list_head link;
 
-	struct list_head phy_receiver_list;
-
 	struct delayed_work br_work; /* bus reset job */
 	bool br_short;
 
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
