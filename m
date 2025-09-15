Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E7DE1B5888D
	for <lists+linux1394-devel@lfdr.de>; Tue, 16 Sep 2025 01:48:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qhgiuWO9ieCn8ZyC//4kYxDufleNWD8B0nIzdIO0xKw=; b=jtEfylrK6yV0/44abwI1AXSj/S
	tlFqKO4usAWxmfUDm1mfeQg71Nz+gJ4m4Yr/PnO9uDxLPGN2enWbCVxwGoEZLvh7/hpBsOBtn83wH
	9JiJkbkZ5s06v3UIrG1JgW9ehobeO+mElPMTC8yyZnpbqwg3JvYv/t1LcQP41Deh32oo=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uyIvb-0002y2-M8;
	Mon, 15 Sep 2025 23:48:11 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uyIvX-0002xo-2t
 for linux1394-devel@lists.sourceforge.net;
 Mon, 15 Sep 2025 23:48:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Dol20McAHmsGe7jZI4Cf8OSI5NXIOjVDQY+keMjSiAg=; b=hIioyxhPZ4iClOV9QYEoYBFKRM
 0agl/toB0Xi2vjaoZB1xmyZeYdvswqdf5RyA9yO6RgSYtHIAp1g6tcxXTMiGdUcqB+BMpmr5casjq
 8W7mRuE+2rWC2RgOb/ac1/9zSt/UM/QTFxF/1BeEpm7lkl9Nq4Muqj9QL3bvN3ssmuSQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Dol20McAHmsGe7jZI4Cf8OSI5NXIOjVDQY+keMjSiAg=; b=PJuGzN8y24Vd8fTGAhZVx/GriP
 SUc3BwE/+01AemWpCfIIa83ElCe/bWlYWPpXIOIcy4IIhQCmPVP03UKYWuAUeLrF0+POjYSoa8PWn
 BnQDVdsii+itMDmzHAkl7SmZ6vW6yrMMaFlg2J6w+z+eei8FuS3L+bl0cr1ALdv8Wfb8=;
Received: from fout-b5-smtp.messagingengine.com ([202.12.124.148])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uyIvW-0002KK-J9 for linux1394-devel@lists.sourceforge.net;
 Mon, 15 Sep 2025 23:48:07 +0000
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
 by mailfout.stl.internal (Postfix) with ESMTP id 1BC8F1D001C9;
 Mon, 15 Sep 2025 19:47:56 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-06.internal (MEProxy); Mon, 15 Sep 2025 19:47:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1757980075; x=
 1758066475; bh=Dol20McAHmsGe7jZI4Cf8OSI5NXIOjVDQY+keMjSiAg=; b=R
 lJMaXh86BW7g0l/TLxN/QBxVVUrOHTFGOfLoS0qWY8sEeizOatGqeyYtwOPEWaFc
 ecCQ5AnIKpi/e5d58mEg2bUlVh8CICRnQapCKkmkKGi/6tmunjwYiFh7RfjgMMlR
 hr6uyr+f76Dzj+HcTANFbUBUxHXXtuRCpVF0+/kuMI5ueGG7vNtGO0SJ9Vpan8TT
 7ksxPzx/D1KjRcGLQu6PvsM61QuaOMQWEZPWox3hHeEPjWktfu8LibsRig0NxsZ+
 MUt6gECzf0+Mq0EFCVxfFbKY5CAimvXeqBhmA1g2hj0G1HLAcM53BgdWqfdH/NTp
 M1cZV7OLWkuL6F7598nsA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1757980075; x=1758066475; bh=D
 ol20McAHmsGe7jZI4Cf8OSI5NXIOjVDQY+keMjSiAg=; b=JIRyxcBFkpKooUjeH
 wYAS52CJbcSVp8H0INJzI6vYSvNzXDgkjtSfDqxll7IOSirdVpuMwhsByMHroD4p
 OyACMyXUNeGMovbyTs0kTQVxbZX058L22WXbpKyqOdHgAeF3SFoVHvxsUmYh6iYy
 dX0Nc5JlMnc1RWjzCj3tM+0TzVu6O48VcZ/sFmlJ7VTOvcMMy3mQvOfaQJazTR7X
 P92ILkB5p0a4xri8xVOkZl4o5rBUmAQAadCU0cyhMz4LQaSSOVxiT53deQ+R9odL
 1fpxpi+L1uCyKP4e+xHd/GJT6Zh4jYB2/Yo4+N2ljuO84TUuerYjg5qqZE15NZ0F
 LnCKQ==
X-ME-Sender: <xms:q6XIaOZns_v1vxALG_Bqtzq7i2ofFwc8IQYDtxdnEpzUx-ojPS-BXg>
 <xme:q6XIaKVeioCs54SAdqI0NrmbKBJk1dxR-yJuhV_1IQKsyb33AGAja-Bw0M8xkhM66
 nQH1u8WZeG_UJshuzo>
X-ME-Received: <xmr:q6XIaK51pv9b_zGUtCd5n0Kxvnim8t48S7BuinAIwYy9UfC9qSh2Dt0SAlFAxbJDW4ILHkIf3wrvfMQNAwIFRHcXZZt2sfo0WFEqhfrhgQzkxQ>
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
X-ME-Proxy: <xmx:q6XIaNghl6M5lNf0RSCCVit3O69Tflzpw4Q1TZFXmezPlMMmLJ95eg>
 <xmx:q6XIaJdws6RMLyInWSJJVSM5nVIvJproxRJ_ghb66kuM3NOZdCIQ3Q>
 <xmx:q6XIaKeiQEk_Abwra1-CrIk6EgN67n94fh1Gu-xGmrI4hjvQj0df_g>
 <xmx:q6XIaL_OZe8xj2HT6k1kF9awO_FS3KbaP6pLnDS-l6Pf1Te_VDUpEw>
 <xmx:q6XIaMfCJAnrlknp1S6DQHBpmYqeHJlnMiGWWYHXhTmxJJztjc665S0F>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 15 Sep 2025 19:47:54 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 3/6] firewire: core: use spin lock specific to topology map
Date: Tue, 16 Sep 2025 08:47:44 +0900
Message-ID: <20250915234747.915922-4-o-takashi@sakamocchi.jp>
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
 Content preview:  At present, the operation for read transaction to topology
 map register is not protected by any kind of lock primitives. This causes
 a potential problem to result in the mixed content of topology map. 
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
X-Headers-End: 1uyIvW-0002KK-J9
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

At present, the operation for read transaction to topology map register is
not protected by any kind of lock primitives. This causes a potential
problem to result in the mixed content of topology map.

This commit adds and uses spin lock specific to topology map.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-topology.c    | 22 ++++++++++++++--------
 drivers/firewire/core-transaction.c |  6 +++++-
 include/linux/firewire.h            |  6 +++++-
 3 files changed, 24 insertions(+), 10 deletions(-)

diff --git a/drivers/firewire/core-topology.c b/drivers/firewire/core-topology.c
index 17aaf14cab0b..c62cf93f3f65 100644
--- a/drivers/firewire/core-topology.c
+++ b/drivers/firewire/core-topology.c
@@ -435,20 +435,22 @@ static void update_tree(struct fw_card *card, struct fw_node *root)
 	}
 }
 
-static void update_topology_map(struct fw_card *card,
-				u32 *self_ids, int self_id_count)
+static void update_topology_map(__be32 *buffer, size_t buffer_size, int root_node_id,
+				const u32 *self_ids, int self_id_count)
 {
-	int node_count = (card->root_node->node_id & 0x3f) + 1;
-	__be32 *map = card->topology_map;
+	__be32 *map = buffer;
+	int node_count = (root_node_id & 0x3f) + 1;
+
+	memset(map, 0, buffer_size);
 
 	*map++ = cpu_to_be32((self_id_count + 2) << 16);
-	*map++ = cpu_to_be32(be32_to_cpu(card->topology_map[1]) + 1);
+	*map++ = cpu_to_be32(be32_to_cpu(buffer[1]) + 1);
 	*map++ = cpu_to_be32((node_count << 16) | self_id_count);
 
 	while (self_id_count--)
 		*map++ = cpu_to_be32p(self_ids++);
 
-	fw_compute_block_crc(card->topology_map);
+	fw_compute_block_crc(buffer);
 }
 
 void fw_core_handle_bus_reset(struct fw_card *card, int node_id, int generation,
@@ -479,8 +481,6 @@ void fw_core_handle_bus_reset(struct fw_card *card, int node_id, int generation,
 
 		local_node = build_tree(card, self_ids, self_id_count, generation);
 
-		update_topology_map(card, self_ids, self_id_count);
-
 		card->color++;
 
 		if (local_node == NULL) {
@@ -493,5 +493,11 @@ void fw_core_handle_bus_reset(struct fw_card *card, int node_id, int generation,
 			update_tree(card, local_node);
 		}
 	}
+
+	// Just used by transaction layer.
+	scoped_guard(spinlock, &card->topology_map.lock) {
+		update_topology_map(card->topology_map.buffer, sizeof(card->topology_map.buffer),
+				    card->root_node->node_id, self_ids, self_id_count);
+	}
 }
 EXPORT_SYMBOL(fw_core_handle_bus_reset);
diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index 623e1d9bd107..8edffafd21c1 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -1196,7 +1196,11 @@ static void handle_topology_map(struct fw_card *card, struct fw_request *request
 	}
 
 	start = (offset - topology_map_region.start) / 4;
-	memcpy(payload, &card->topology_map[start], length);
+
+	// NOTE: This can be without irqsave when we can guarantee that fw_send_request() for local
+	// destination never runs in any type of IRQ context.
+	scoped_guard(spinlock_irqsave, &card->topology_map.lock)
+		memcpy(payload, &card->topology_map.buffer[start], length);
 
 	fw_send_response(card, request, RCODE_COMPLETE);
 }
diff --git a/include/linux/firewire.h b/include/linux/firewire.h
index f3260aacf730..aeb71c39e57e 100644
--- a/include/linux/firewire.h
+++ b/include/linux/firewire.h
@@ -129,7 +129,11 @@ struct fw_card {
 
 	bool broadcast_channel_allocated;
 	u32 broadcast_channel;
-	__be32 topology_map[(CSR_TOPOLOGY_MAP_END - CSR_TOPOLOGY_MAP) / 4];
+
+	struct {
+		__be32 buffer[(CSR_TOPOLOGY_MAP_END - CSR_TOPOLOGY_MAP) / 4];
+		spinlock_t lock;
+	} topology_map;
 
 	__be32 maint_utility_register;
 
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
