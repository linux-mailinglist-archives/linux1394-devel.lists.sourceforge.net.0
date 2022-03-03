Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE1A4CC53A
	for <lists+linux1394-devel@lfdr.de>; Thu,  3 Mar 2022 19:31:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1nPqEG-0004nC-AI; Thu, 03 Mar 2022 18:31:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dossche.niels@gmail.com>) id 1nPqEE-0004n6-JK
 for linux1394-devel@lists.sourceforge.net; Thu, 03 Mar 2022 18:31:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cuvsRmPDO09MSdIx8vAMU7t/nouGoOL2ZN/qMXFh58k=; b=X3JJS+p6tgqKWxTRrUMvOHJ/3y
 6P6JMxB3DPrCWCU2b0lhUk2AzLaIDPrehhaSZS7MX2+RWJq74tUlJlT7cvg0TVk9h+rz7exLF7gvD
 FLGA3rzPHt0AlYI7nDU4veizr4tYLNSK80sxacDq+e6v+mUEfEMuUVMd5CHW8agFKLZ0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=cuvsRmPDO09MSdIx8vAMU7t/nouGoOL2ZN/qMXFh58k=; b=B
 Nhd9GOeQ+NkBAevuqgI18iDKtr8Xk7bKYQIMQ8WWB5afDLRLprJdBhdqnBV1+zbnKOLDrK0wfzixg
 I7VoHrxmWjEfd5urteZhZW5mXaQDTncfv7GyTG7Gv1180JbHJD6T8usB0VH5V2oWSjY3x1VfxCAj3
 kzipY5nq/H55ceMY=;
Received: from mail-wr1-f53.google.com ([209.85.221.53])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nPqE9-003tIZ-EN
 for linux1394-devel@lists.sourceforge.net; Thu, 03 Mar 2022 18:31:04 +0000
Received: by mail-wr1-f53.google.com with SMTP id j17so9248774wrc.0
 for <linux1394-devel@lists.sourceforge.net>;
 Thu, 03 Mar 2022 10:31:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cuvsRmPDO09MSdIx8vAMU7t/nouGoOL2ZN/qMXFh58k=;
 b=Hbf9/wv68kwaXVkEegngQEUKQcm15yC0u8RRemH1z2Je1e/9MSAYBVn3/mq+K5WMxj
 MzKfwbDa3OVKPhWmu+DbRf1V+riL7bCIvJ2P8FxY0vNnsAW0vCqYM0YjZDiG4O8+HzEs
 5oFEYInfrbPvvxV8YXK6O3AJB7wPU5EseqjEAzCKaECCIz+5lS3VmZ1tCY6V89G0I5pl
 JI7ZzF5mPZjAqfBPTwiZRl/NbXQT1LWLR3T3ZI0yQRwpRORykRFJ+imEDMlO6Mg4tRHC
 O7Si/cLTvvYao7JIPymPX0BYhh2ksxvTqDPaunldyFYpmF/0fXPSvNtfOoMgETtBZuuA
 vLkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cuvsRmPDO09MSdIx8vAMU7t/nouGoOL2ZN/qMXFh58k=;
 b=j7YuVjEumTcR23aauJw+WD5pcd6kxQ575YUm/anv6tRFvXtgLH+X0rNBYAOblFiEWW
 SW4DkbJDy/57IwOloFWmruiz0TANpFHwCMq1tVAyGldxTytHhRxkvs3/Gw8mTFsdnPdD
 7IEQA2YwSF3R1XGgTgqLjlgxA9YIPC8j+49dntUpzp7LhJRqCCT6vPEYwhy4ZWqjRCDJ
 DQYMCJjuoj4ZyqqkLnwfy0dDyL5xJN2hx/ji52oY1QcyaGv6fRUD5MBvmbfQ7hjaQJ97
 30UUrWY9RKMn/86XIUYUPJs+RIra6DOXFge0yuRk5S4rRHgRl5WxQ5O/9rcfUncxwZ3N
 k+Lw==
X-Gm-Message-State: AOAM530bitWFpzzbc/SF1eBBxEFTO9PskPZaYSy0McO5JIJkj/SWiZgi
 ecKAhJmjUlf3KyrdJf+L+/emlUK5MKOELQ==
X-Google-Smtp-Source: ABdhPJy+wIvczzoar5JaRhmBzxewnGNYTLuTAQtAEKn24qO5eQsokznO6HaqjVW7QU2RNoDvRBlXYQ==
X-Received: by 2002:adf:ed12:0:b0:1ef:585d:bfcd with SMTP id
 a18-20020adfed12000000b001ef585dbfcdmr25109218wro.570.1646332254959; 
 Thu, 03 Mar 2022 10:30:54 -0800 (PST)
Received: from nlaptop.localdomain
 (ptr-dtfv0poj8u7zblqwbt6.18120a2.ip6.access.telenet.be.
 [2a02:1811:cc83:eef0:f2b6:6987:9238:41ca])
 by smtp.gmail.com with ESMTPSA id
 x11-20020adfdccb000000b001e57922b8b6sm2639047wrm.43.2022.03.03.10.30.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Mar 2022 10:30:54 -0800 (PST)
From: Niels Dossche <dossche.niels@gmail.com>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH] firewire: core: extend card->lock in fw_core_handle_bus_reset
Date: Thu,  3 Mar 2022 19:30:38 +0100
Message-Id: <20220303183038.54126-1-dossche.niels@gmail.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: card->local_node and card->bm_retries are both always
 accessed
 under card->lock. fw_core_handle_bus_reset has a check whose condition depends
 on card->local_node and whose body writes to card->bm_retr [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.53 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dossche.niels[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.53 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1nPqE9-003tIZ-EN
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
Cc: Niels Dossche <dossche.niels@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

card->local_node and card->bm_retries are both always accessed under
card->lock.
fw_core_handle_bus_reset has a check whose condition depends on
card->local_node and whose body writes to card->bm_retries.
Both of these accesses are not under card->lock. Move the lock acquiring
of card->lock to before this check such that these accesses do happen
when card->lock is held.
fw_destroy_nodes is called inside the check.
Since fw_destroy_nodes already acquires card->lock inside its function
body, move this out to the callsites of fw_destroy_nodes.
Also add a comment to indicate which locking is necessary when calling
fw_destroy_nodes.

Signed-off-by: Niels Dossche <dossche.niels@gmail.com>
---
 drivers/firewire/core-card.c     | 3 +++
 drivers/firewire/core-topology.c | 9 +++------
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/firewire/core-card.c b/drivers/firewire/core-card.c
index 54be88167c60..f3b3953cac83 100644
--- a/drivers/firewire/core-card.c
+++ b/drivers/firewire/core-card.c
@@ -668,6 +668,7 @@ EXPORT_SYMBOL_GPL(fw_card_release);
 void fw_core_remove_card(struct fw_card *card)
 {
 	struct fw_card_driver dummy_driver = dummy_driver_template;
+	unsigned long flags;
 
 	card->driver->update_phy_reg(card, 4,
 				     PHY_LINK_ACTIVE | PHY_CONTENDER, 0);
@@ -682,7 +683,9 @@ void fw_core_remove_card(struct fw_card *card)
 	dummy_driver.stop_iso		= card->driver->stop_iso;
 	card->driver = &dummy_driver;
 
+	spin_lock_irqsave(&card->lock, flags);
 	fw_destroy_nodes(card);
+	spin_unlock_irqrestore(&card->lock, flags);
 
 	/* Wait for all users, especially device workqueue jobs, to finish. */
 	fw_card_put(card);
diff --git a/drivers/firewire/core-topology.c b/drivers/firewire/core-topology.c
index b63d55f5ebd3..f40c81534381 100644
--- a/drivers/firewire/core-topology.c
+++ b/drivers/firewire/core-topology.c
@@ -375,16 +375,13 @@ static void report_found_node(struct fw_card *card,
 	card->bm_retries = 0;
 }
 
+/* Must be called with card->lock held */
 void fw_destroy_nodes(struct fw_card *card)
 {
-	unsigned long flags;
-
-	spin_lock_irqsave(&card->lock, flags);
 	card->color++;
 	if (card->local_node != NULL)
 		for_each_fw_node(card, card->local_node, report_lost_node);
 	card->local_node = NULL;
-	spin_unlock_irqrestore(&card->lock, flags);
 }
 
 static void move_tree(struct fw_node *node0, struct fw_node *node1, int port)
@@ -510,6 +507,8 @@ void fw_core_handle_bus_reset(struct fw_card *card, int node_id, int generation,
 	struct fw_node *local_node;
 	unsigned long flags;
 
+	spin_lock_irqsave(&card->lock, flags);
+
 	/*
 	 * If the selfID buffer is not the immediate successor of the
 	 * previously processed one, we cannot reliably compare the
@@ -521,8 +520,6 @@ void fw_core_handle_bus_reset(struct fw_card *card, int node_id, int generation,
 		card->bm_retries = 0;
 	}
 
-	spin_lock_irqsave(&card->lock, flags);
-
 	card->broadcast_channel_allocated = card->broadcast_channel_auto_allocated;
 	card->node_id = node_id;
 	/*
-- 
2.35.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
