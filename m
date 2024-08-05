Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B2CC29477AB
	for <lists+linux1394-devel@lfdr.de>; Mon,  5 Aug 2024 10:54:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1satUN-0007nv-8a;
	Mon, 05 Aug 2024 08:54:48 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1satUA-0007i4-Iy
 for linux1394-devel@lists.sourceforge.net;
 Mon, 05 Aug 2024 08:54:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cnExW14OrezM7AAY2ZcP4bF1stBaSNMPihuGoMDdgLg=; b=nSJcUFz/GqASunzy5s8ma7PEw3
 1nhG1G24HwiCbRgzyquIC9h/lxKvtoY1PGChTj4yJ0qgUy6Xw4IuqZDJYJvI+Y5mxjhTWFC7qb7Kk
 igs0Ly8s/NyQj1RNDszMXpaP/JtB3Nu74WRruMSKpDR+C95Y5+2mx+YFS2wd2mxd3vAE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cnExW14OrezM7AAY2ZcP4bF1stBaSNMPihuGoMDdgLg=; b=IOeq5PsOtCER5JKrYfndPTy2Z7
 7nDI/YPh35uStts1ADwVqMYlawi2mhOKc+0M/3wgyM2FrvsSkZzxh9dW3v61NqIr8vIuuU5SqdAdA
 TjXy/Kzba0cwc+ruoSlbnY08jWtt2BuDzXkzoXoD5T5xyhiDNlvO0gEWKjlWdSYUH/3U=;
Received: from fhigh4-smtp.messagingengine.com ([103.168.172.155])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1satUA-0002r5-It for linux1394-devel@lists.sourceforge.net;
 Mon, 05 Aug 2024 08:54:35 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 081151151CA1;
 Mon,  5 Aug 2024 04:54:24 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute1.internal (MEProxy); Mon, 05 Aug 2024 04:54:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1722848064; x=
 1722934464; bh=cnExW14OrezM7AAY2ZcP4bF1stBaSNMPihuGoMDdgLg=; b=o
 rDCVfoTtUc/UYhoAS6nscznEnCaUXU0brCBRTBpaFIHOZLi/oqE20jibt3t+ybgq
 ajHzY9r9z7yXJ+XPYLcLsJZmkYw3sulBL3ShSdqyZHwJjMDHVcUcREG6kNT85+Xl
 bBA+9UhJqu6LAZ3nxIK2Nlm72iw7qP3zrCf4/V/QroTza5G4mGKEob0B2OsRGWim
 oB4KoQ4+JWldFTHEl7H89n8d5vWMSPhVbPsQfz0TYuceYnfPiwQlCVGT6LYKwUZh
 PSFgiUsRnzqGrbmg7TnOWXPDUjKmeYmF8YhQsYXmhqkchnYGntdzirp5exOyqeOQ
 0VFTavG9XZj7omK8QlaOg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1722848064; x=
 1722934464; bh=cnExW14OrezM7AAY2ZcP4bF1stBaSNMPihuGoMDdgLg=; b=S
 E/CGVgOWXPN3sF+d1kh3rpplEhvb9tDX6vqnP4eB9OqJtqR7tKYwlQVAq7n1v1k8
 1bbysimWOi5HMCHX7U46jLiYxdv54jYma5u72akT8Ic4Isar4Ticrl6g3xpcYjpo
 tDZVf+P0Oh6wRU65SpwLeFiCcdQ5ymw+/WAWaPFtMzZgwnL2P+WMiNJz0W6yP97U
 XM3tjbVVW/ZXu+w/3vhio+91lwp9y04itFY+OYobeKrd1+J0ixRrcOSteol45zZF
 4b6kqCp2skXPs2mQkuDwL7ipI0L1okh1YpixvlnQzcb06HkIud2Lc5M4flTKgyD4
 daPa3WnH1/zJOitvUftsQ==
X-ME-Sender: <xms:P5OwZs_07PksEf_ubNVJoKUkOpG6qF3waqgn-8L7m8r5s9R7bRlWGQ>
 <xme:P5OwZktSoMYg16UCer16zz1fUC-tyhh5p54psk_cvkmzlE0MMQU5TG2dti2bJXSLU
 3PDzwjRhOxW5Yid6BY>
X-ME-Received: <xmr:P5OwZiDEtnqyKjQAyvhvNEok8HDUadyqMh7UgoO4kkzc6HtlrR9py_SsHVIb6GdT-YzrzNTshm8i1IfAY2DmHJBIeRc5yWpxjUtC93givs4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrkeeigddutdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejue
 dvgfduudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgv
 rhfuihiivgepvdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtoheptd
X-ME-Proxy: <xmx:P5OwZsetaUbUQonv8WrlQwW12aMJw9XYpH00tXCI-e1Ema3_vvY5LQ>
 <xmx:P5OwZhOM1-5b-VtuA6CMt_kVegqRIYb1fqG86xMPFv44IS15rfDT4Q>
 <xmx:P5OwZmlSCnY049FvBoL-p62oWMqzM21sIoMmIXzyO0T5Q3V0gxvl_w>
 <xmx:P5OwZjv-2AE1oE7Y5HxHqMelVHEgiMONCl0TO-xfwgjiic3MXiS3Qg>
 <xmx:QJOwZqboUnLo1TBNtzWRGP86SLhVMSXCJ4QmBiKVXmJ4M2aoEopvqy_n>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 5 Aug 2024 04:54:22 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH v2 09/17] firewire: core: use guard macro to maintain list of
 events for userspace clients
Date: Mon,  5 Aug 2024 17:54:00 +0900
Message-ID: <20240805085408.251763-10-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240805085408.251763-1-o-takashi@sakamocchi.jp>
References: <20240805085408.251763-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
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
 for more information. [URIs: sakamocchi.jp]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.155 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.155 listed in bl.score.senderscore.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [103.168.172.155 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1satUA-0002r5-It
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
