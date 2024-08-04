Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CC422946ED5
	for <lists+linux1394-devel@lfdr.de>; Sun,  4 Aug 2024 15:03:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1saasw-0004uv-Qz;
	Sun, 04 Aug 2024 13:02:54 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1saasv-0004ue-5u
 for linux1394-devel@lists.sourceforge.net;
 Sun, 04 Aug 2024 13:02:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cnExW14OrezM7AAY2ZcP4bF1stBaSNMPihuGoMDdgLg=; b=DxygIVfnKNTjHu4bDsP3+z9ga2
 o/sMRaEO+cSFP84Km3mJOKQ27v3GsF22EKN9fCWOFyH9Ovbs7UgfdlGuCwL9cvIb19E/B1OLdRvzk
 Qw8s3kfZmcfBQwejNAbPqqC8syJzyaQZgRlnVUahiMGkA0PWFHmjTieWSSukZbx4IMWc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cnExW14OrezM7AAY2ZcP4bF1stBaSNMPihuGoMDdgLg=; b=fYXuCJj7EErLxByg1huNyF+CTj
 xU9Ar+lllZA1ioGAlfJAFYc2RuLeXc9f4NYr00i/qFohgQI4Z4KIJG/oYoOtkVT8YYpU7YbG+ytwg
 uA4EIeBfMyETYrZ9NKut1rvVkXmBjPlcIbfEGkn5jiS/RkKIsV3UrOtNbinDMFevC+40=;
Received: from fout3-smtp.messagingengine.com ([103.168.172.146])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1saasu-0001EL-CC for linux1394-devel@lists.sourceforge.net;
 Sun, 04 Aug 2024 13:02:53 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailfout.nyi.internal (Postfix) with ESMTP id A388F138817A;
 Sun,  4 Aug 2024 09:02:41 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Sun, 04 Aug 2024 09:02:41 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1722776561; x=
 1722862961; bh=cnExW14OrezM7AAY2ZcP4bF1stBaSNMPihuGoMDdgLg=; b=I
 hSBqh1gvrjtcsEc0nKOcGMM5dpTiQtMkhlsnKMX/GrX748Mwsxc99mAOuSCoRAdH
 W+QoaDEg4pCiOVqk4jF2EdNjX0R0XTc55c9+jkq3fz1jJLpScfsiIT7bL8+bcRO8
 TTC4ybgMzEhQpG1zRrXDpU7aOJb9mY5aMBw9dSifXONmfY6RNYOeu1T3gTT8ZCJ3
 mH+VgTfkHufa4KXNmroiSuPJhSigHPeB/4W825hL4HPuE1m2V1GBXuI2aOD4xHa2
 rnBNn90kz3RDfO4bmzUdmvDBjb/6a16fBO8wefeC+SO79RVj0dx+E29QE+X1u2Ng
 1W9b2hskRPQenduOZfwrg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1722776561; x=
 1722862961; bh=cnExW14OrezM7AAY2ZcP4bF1stBaSNMPihuGoMDdgLg=; b=S
 Fki4GMwOEDoZK8ctjVyZ3LgSQvwT+4TaR8tQcI8KUVK92bw3C3ODJvQgNoicwyo4
 aboA8yb0tYl4Ekbb00KkphIZSb8NP7A0r/ykQOIA4UOSETXqNRfLAowERfS2oamU
 vUA7PtJ2AlCXhr+beIgxhpvFQzvxtEF9edtdatCBuD3iubjPze75AHkbq0Z1UTty
 OYDn7n+v/GX+LuV208ESMPIa3HX1xpznXVUrfSDaBu7uMp3vr91oPyjWOwKh4ojV
 E+LlKpSvaEq0sfwyD+JW8Kh0pa4YRTQt/nwKDZLzOlBlVvUq1FLHFjJyotUCv53z
 aR4ToR4EwREGRHTM6euxw==
X-ME-Sender: <xms:8XuvZn3D8FSh53nYrPNrteV-Yug4vUQJhWXwl1kiCYg44ODzRO7r8A>
 <xme:8XuvZmGmV18mt356_7ncmLmaU2HPbF_qOw-oOzoRCpEgeacC_MWsFmxbgg3OIMG1x
 3hsXP0Qt_dTDARiJxw>
X-ME-Received: <xmr:8XuvZn5Vmc72em-U_r2VKncAe7OW1XPj8iH0qO_dwHsJJxV5wEV8xeVYmrC2-PPRs0PTTCCY56xQEawXFsOZNXI_iIA6DgiRJ1rIx-2LUUOZtQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrkeeggdehlecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejue
 dvgfduudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtoheptd
X-ME-Proxy: <xmx:8XuvZs0GJBNThAt_fkNbaupspV0VxrhnLx2zcgc0TgLbWz3IdmM0xw>
 <xmx:8XuvZqHXssuQniB9MlIDCp7OllbiUProQkgqqaiXYwIEE7Jst71zmA>
 <xmx:8XuvZt8RM1AUKovIejb62x0H-YkK5fJ1WhjKx9Z0M1efU6V_XyCuWA>
 <xmx:8XuvZnmH_lWuYm5lH3FUg_-21GYY_wy-0HoBkWKtChK77lZVBvf6Rg>
 <xmx:8XuvZvTXCjwV-wtF9E3muvzK4WKUDN5f0nfguULuKUokt9dcxO-J6jku>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 4 Aug 2024 09:02:40 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 09/17] firewire: core: use guard macro to maintain list of
 events for userspace clients
Date: Sun,  4 Aug 2024 22:02:16 +0900
Message-ID: <20240804130225.243496-10-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240804130225.243496-1-o-takashi@sakamocchi.jp>
References: <20240804130225.243496-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The core function maintains events to userspace by list in
 the instance of client. The concurrent access to the list is protected by
 spinlock in the instance. This commit uses guard macro to maintain the
 spinlock.
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.146 listed in sa-trusted.bondedsender.org]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [103.168.172.146 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.146 listed in bl.score.senderscore.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1saasu-0001EL-CC
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

The core function maintains events to userspace by list in the instance of
client. The concurrent access to the list is protected by spinlock in
the instance.

This commit uses guard macro to maintain the spinlock.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-cdev.c | 27 ++++++++++++---------------
 1 file changed, 12 insertions(+), 15 deletions(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index 90e9dfed8681..2e2199eaa05b 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -287,19 +287,17 @@ static int fw_device_op_open(struct inode *inode, struct file *file)
 static void queue_event(struct client *client, struct event *event,
 			void *data0, size_t size0, void *data1, size_t size1)
 {
-	unsigned long flags;
-
 	event->v[0].data = data0;
 	event->v[0].size = size0;
 	event->v[1].data = data1;
 	event->v[1].size = size1;
 
-	spin_lock_irqsave(&client->lock, flags);
-	if (client->in_shutdown)
-		kfree(event);
-	else
-		list_add_tail(&event->link, &client->event_list);
-	spin_unlock_irqrestore(&client->lock, flags);
+	scoped_guard(spinlock_irqsave, &client->lock) {
+		if (client->in_shutdown)
+			kfree(event);
+		else
+			list_add_tail(&event->link, &client->event_list);
+	}
 
 	wake_up_interruptible(&client->wait);
 }
@@ -321,10 +319,10 @@ static int dequeue_event(struct client *client,
 		       fw_device_is_shutdown(client->device))
 		return -ENODEV;
 
-	spin_lock_irq(&client->lock);
-	event = list_first_entry(&client->event_list, struct event, link);
-	list_del(&event->link);
-	spin_unlock_irq(&client->lock);
+	scoped_guard(spinlock_irq, &client->lock) {
+		event = list_first_entry(&client->event_list, struct event, link);
+		list_del(&event->link);
+	}
 
 	total = 0;
 	for (i = 0; i < ARRAY_SIZE(event->v) && total < count; i++) {
@@ -1887,9 +1885,8 @@ static int fw_device_op_release(struct inode *inode, struct file *file)
 		fw_iso_buffer_destroy(&client->buffer, client->device->card);
 
 	/* Freeze client->resource_idr and client->event_list */
-	spin_lock_irq(&client->lock);
-	client->in_shutdown = true;
-	spin_unlock_irq(&client->lock);
+	scoped_guard(spinlock_irq, &client->lock)
+		client->in_shutdown = true;
 
 	wait_event(client->tx_flush_wait, !has_outbound_transactions(client));
 
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
