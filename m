Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F5BCB48202
	for <lists+linux1394-devel@lfdr.de>; Mon,  8 Sep 2025 03:21:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4xc9G1BlukoJHDIVVwXIqoGIIoG6j4tj5AMLRTrloSs=; b=RFQZ1PJiZZqlvM4NpmfGoNs+tq
	32k4JszYwepfHQYPSZuFBCvEvH2a5wbkpGAssggz3shayY/l6pS7ULFSWeYrB5Ji6vdVBv+iTUVwH
	ri5SYGnLqE8YSXJBeO2Graowgb96mkBbqpyWMMugqgQo2cqIIts9URmeMthV5ibLsWvY=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uvQZb-00070P-IH;
	Mon, 08 Sep 2025 01:21:35 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uvQZa-000707-07
 for linux1394-devel@lists.sourceforge.net;
 Mon, 08 Sep 2025 01:21:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UQnp+k+Zo5z2StVUHwUJPpMC87ruLHT+ma6kU7RfeZs=; b=dpDB88fnUnAnKyukCjY+IS9y6l
 ieifTtzwIV7Jx8oElnE4AhXybwp8c8isR6yfbCYv03pcqWLk/tlow/S5FsKs5xDRc/Jpr1Jzebp1N
 Aa0liWTELKBISV1NW42NvvfmSx20INNhltZpbZmAv7bxpzJuxFFEPrAiblx2X9YOVJRs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UQnp+k+Zo5z2StVUHwUJPpMC87ruLHT+ma6kU7RfeZs=; b=HD1bHbeoSEpMZxV976dN3+gub6
 s5mPNIfITd5lsIurjwYDPGYDGsBGQNMo6d1VNnG+4Uj2mxldbMw+9LHvkSoeuCcUmMllr70+C16c2
 Y2Z/j3YwXiAoG7364Z5pOCqHFp0KkV7jfg5oM46AuifiCSomdE47GPdZMrh6CbFJYTUI=;
Received: from fout-a3-smtp.messagingengine.com ([103.168.172.146])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uvQZZ-0001jy-Gd for linux1394-devel@lists.sourceforge.net;
 Mon, 08 Sep 2025 01:21:33 +0000
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
 by mailfout.phl.internal (Postfix) with ESMTP id F0CD9EC00A6;
 Sun,  7 Sep 2025 21:21:27 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-06.internal (MEProxy); Sun, 07 Sep 2025 21:21:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1757294487; x=
 1757380887; bh=UQnp+k+Zo5z2StVUHwUJPpMC87ruLHT+ma6kU7RfeZs=; b=f
 I3hC+9Gie2KnUrH3MNouwnweFat5ZaeaPTnbe7K3BOw2Ce8699YFahZ9spBWOHAp
 oIqmgiGHa/2ulr47ix7doP1/qY7YTBB3PIii4zlHm131vsEZUDMQTAIDaVweEXsb
 2aY5svVE684TZ63ZVmrYUDXf0l7OGv9m1CLdgK0ksGfrC9SoWrlltNGS6Kjtn+yB
 Ea6BfMV8AERck/5iG3cbMcsLRw73hiaihIojpqDu5A9UZY7xJ2BWUgvywHtX+hEV
 54pXxqvJXYcep6znKzNVPmPxjvrJcnpIxidl2hbV3JnW9TFHebQdWYDT5U3Zmpfz
 /58HPMzLP6f/r2KZoopfA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1757294487; x=1757380887; bh=U
 Qnp+k+Zo5z2StVUHwUJPpMC87ruLHT+ma6kU7RfeZs=; b=MUBM5r+86MmeexnXr
 HSgMMi4QjGvfZMB6qKnyqqjeF7yJMTh9+mCmYhR8xJXX0wVcS+ZaQgNNfzRxLiVD
 tXIG6Awhy4jedF53OdCt6slj4ylTHvAf6p+0Y4fOsD/89G+e70SzEUP1eTfIPn8+
 3HdxRIe/aZ5VcrEwyIno0EYx3zQHD6WdWB/iyMuGv4xOkwsCixwcU0ruxB5JtuQa
 gjz+qCemlaWeWHaNOQsoyP/9p8jDHHu4m1es6qrNYFT+xZrUDG0dLJE8dW2r5v3q
 tgxPohyV+M7oKSkUmHL+zechz/7Eqo4FnZO2v7RdJDcA6hEMgQQOTYF6Q0S82z+t
 4VkaA==
X-ME-Sender: <xms:ly--aGzssJVj1Ro6HhiEQCSVBJfTOOaUyLD_bSd2HlDQYUS64GzxSQ>
 <xme:ly--aLMvFDahnBVElsDaeZuNsrxMHBFOgFjM5ZGA0zQP6EruAvE1uL_BpdjoPWB3f
 WPeUj_x0Pw-OXPCUTc>
X-ME-Received: <xmr:ly--aKQMD_paYnwAkL-U9KMJh-lP6zn9qxCFsuYSU8DnrI5XEtfR2bqd3YBCMqTKDMFDlrBfHjdhTEy1T1HWvjq1bNuPSHRTldJxPBGqADg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdduiedvtdcutefuodetggdotefrod
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
X-ME-Proxy: <xmx:ly--aJZsiLiLi1gHimwdyGHGtRGIWoVEjLf6-075TvzS2dymCDyoDQ>
 <xmx:ly--aH33vgOSLYWjvq81Bhgbqqdl_yMjavGMhqlUHKfS8WG5sdbDEw>
 <xmx:ly--aJW2Y-yVWObGLnWhI0yu6jvAX7Wi6qY5bELUC5bNwGwkAlz1gQ>
 <xmx:ly--aBUfpaxna5LBybd2LYCNvJSWsYyYC0Zp5oky8Pf2Co4Uqfw7GQ>
 <xmx:ly--aP1b-Mt9MffGSSRamGpatMtEqaqpvds2vGZmFqo3RZA6guT1VdqX>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 7 Sep 2025 21:21:26 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 10/11] firewire: core: code refactoring to investigate root
 node for bus manager
Date: Mon,  8 Sep 2025 10:21:07 +0900
Message-ID: <20250908012108.514698-11-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250908012108.514698-1-o-takashi@sakamocchi.jp>
References: <20250908012108.514698-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In the middle of bm_work function,
 both the value of gap_count
 and the state of root node are investigated. Current implementation is not
 a good shape since the investigation is aligned to be flat. This commit
 refactors the investigation with two large branches. 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1uvQZZ-0001jy-Gd
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

In the middle of bm_work function, both the value of gap_count and the
state of root node are investigated. Current implementation is not a good
shape since the investigation is aligned to be flat.

This commit refactors the investigation with two large branches.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-card.c | 56 +++++++++++++++++-------------------
 1 file changed, 27 insertions(+), 29 deletions(-)

diff --git a/drivers/firewire/core-card.c b/drivers/firewire/core-card.c
index 99aa98f195ba..b430a70a7eeb 100644
--- a/drivers/firewire/core-card.c
+++ b/drivers/firewire/core-card.c
@@ -294,7 +294,6 @@ static void bm_work(struct work_struct *work)
 	int root_id, new_root_id, irm_id, local_id;
 	int expected_gap_count, generation, grace;
 	bool do_reset = false;
-	bool root_device_is_running;
 	bool root_device_is_cmc;
 
 	lockdep_assert_held(&card->lock);
@@ -310,8 +309,6 @@ static void bm_work(struct work_struct *work)
 
 	root_node = fw_node_get(card->root_node);
 	root_device = fw_node_get_device(root_node);
-	root_device_is_running = root_device &&
-			atomic_read(&root_device->state) == FW_DEVICE_RUNNING;
 	root_device_is_cmc = root_device && root_device->cmc;
 
 	root_id  = root_node->node_id;
@@ -450,34 +447,35 @@ static void bm_work(struct work_struct *work)
 		 * is inconsistent, so bypass the 5-reset limit.
 		 */
 		card->bm_retries = 0;
-	} else if (root_device == NULL) {
-		/*
-		 * Either link_on is false, or we failed to read the
-		 * config rom.  In either case, pick another root.
-		 */
-		new_root_id = local_id;
-	} else if (!root_device_is_running) {
-		/*
-		 * If we haven't probed this device yet, bail out now
-		 * and let's try again once that's done.
-		 */
-		spin_unlock_irq(&card->lock);
-		return;
-	} else if (root_device_is_cmc) {
-		/*
-		 * We will send out a force root packet for this
-		 * node as part of the gap count optimization.
-		 */
-		new_root_id = root_id;
 	} else {
-		/*
-		 * Current root has an active link layer and we
-		 * successfully read the config rom, but it's not
-		 * cycle master capable.
-		 */
-		new_root_id = local_id;
-	}
+		// Now investigate root node.
+		struct fw_device *root_device = fw_node_get_device(root_node);
+
+		if (root_device == NULL) {
+			// Either link_on is false, or we failed to read the
+			// config rom.  In either case, pick another root.
+			new_root_id = local_id;
+		} else {
+			bool root_device_is_running =
+				atomic_read(&root_device->state) == FW_DEVICE_RUNNING;
 
+			if (!root_device_is_running) {
+				// If we haven't probed this device yet, bail out now
+				// and let's try again once that's done.
+				spin_unlock_irq(&card->lock);
+				return;
+			} else if (root_device->cmc) {
+				// We will send out a force root packet for this
+				// node as part of the gap count optimization.
+				new_root_id = root_id;
+			} else {
+				// Current root has an active link layer and we
+				// successfully read the config rom, but it's not
+				// cycle master capable.
+				new_root_id = local_id;
+			}
+		}
+	}
  pick_me:
 	/*
 	 * Pick a gap count from 1394a table E-1.  The table doesn't cover
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
