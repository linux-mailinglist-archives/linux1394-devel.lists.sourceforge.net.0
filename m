Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D05AB81343
	for <lists+linux1394-devel@lfdr.de>; Wed, 17 Sep 2025 19:38:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/weBPO8C7t3yOcVmc4TncRf5MV51eufJJt0aSz71Bsc=; b=k+Mj97c9RXzWiuKVCojhg11SAj
	ebZAa0VLaOFyRp/FnGPXZJC68SsC8vqNIyvR8rp3hJESqLc0qmeaQ2gb/IUxG2qzHHcNdK8IR+A8l
	utp/NbJm+gfXZdE/qB7q/Q7wpyD83dHvXyin0JZg+sWMEs8KdBz9xAUBQMqExtn/jjag=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uyfea-00055g-CD;
	Wed, 17 Sep 2025 00:04:08 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uyfeZ-00055W-9N
 for linux1394-devel@lists.sourceforge.net;
 Wed, 17 Sep 2025 00:04:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ENC8/CN5pTqWSzE9+CkyUy0+hxEht2fcjnaq9gea9z8=; b=DrqJTtamNlbJsT6lsrzMZxfrii
 BXux830lklhOEpcDQqhPBZZ4CIZq2SSDRS48+Ric16EUhnkmLiDvmXzsCOrzy9Viyj3kpt/5TFEaI
 VR9ZAKT/ZxGcBlOKhzj/rVAts63fWLxelkOqIyZntpdp75FFNnVT/twaVTE/ITN6XxEM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ENC8/CN5pTqWSzE9+CkyUy0+hxEht2fcjnaq9gea9z8=; b=NMKf0W1cV0q2rnMnGkWppn/0hz
 00aP5/APQ9T4bm9w4pGVk3MceVH1FCZGf3l4sJkQuPnJrviAXGPW8ym7tAnBP5cErtrzsMwbWCLWs
 ZPNYWnBdV2Z9uB24Nk+j55JlLKJ+r0BQNhzN08HgxaPhDernyIl7qPlo0en6p1uJ2sCQ=;
Received: from fout-b4-smtp.messagingengine.com ([202.12.124.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uyfeY-00046i-Nh for linux1394-devel@lists.sourceforge.net;
 Wed, 17 Sep 2025 00:04:07 +0000
Received: from phl-compute-11.internal (phl-compute-11.internal [10.202.2.51])
 by mailfout.stl.internal (Postfix) with ESMTP id 3B3B71D002D7;
 Tue, 16 Sep 2025 20:03:56 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-11.internal (MEProxy); Tue, 16 Sep 2025 20:03:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1758067436; x=
 1758153836; bh=ENC8/CN5pTqWSzE9+CkyUy0+hxEht2fcjnaq9gea9z8=; b=C
 PK/TOSj5Udiu1w5qP6y1fkJjSTFXOJjWczHfLRovc6G402RZyi2SdiQom0X+N2lL
 Cq64PN4Y8eJ/UnNChdZc2kCoeN7iq2ReYZyCVKgrjnPBm+4ark9C8yFJ3lsE+SGJ
 nJvHBKwuMHXnb2vqBQkZgVHpPHEmQ/I/MFIlCLQ1l/deyO7r2VnwfVJ2dFnKO1g1
 Gb8l0iiV4gfidFRB1SRWfWN0JmyEUmkyaFhMESQhdsioQS/MRRVVyHL9+ice1YLO
 DVnbVPYNet2KrOkxx+HoIc7GefBCCvtrHDQfvdEc6nb8UYYs/yPsfK+UvQwisPqd
 kofW5PqKSD/fsDU/AwJ5Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1758067436; x=1758153836; bh=E
 NC8/CN5pTqWSzE9+CkyUy0+hxEht2fcjnaq9gea9z8=; b=FAyYwJvT7SnohSdpU
 7WxQ84tTYlHvPsxaIN+CjJYZJO66q3I2fiX5IEzoRmJyHZck17X0D2SDv1YppzSV
 0A94xzTiK/7OlmQ3zknhxNzGANGhDlWpMpWNT9yVtgPxqtMDTLpA1riDo7vQ/1tn
 Er73CuLmJU6q6unZrOGwaOh4lWeGAOmsOyoLewWzYQf5Hd76nFtZ8aWXBkA1OTAT
 +2gAjeMOFx3kW35wM/dUkyp0L8mBWrk89897/UXqc0tIBevShQTViLYckOOF95am
 dHhHALt5ZzxUMTS3lWo7IdAHjbHmqqFvR51nvzqgByQzllLutc8K5oTi/LmGbWXn
 pRRwg==
X-ME-Sender: <xms:6_rJaCyzCVdiqF3eXzAlolDFfK0b8LPLnmt-USGyaGsBQTaAb3oHmQ>
 <xme:6_rJaHNPcQRCeveUs1f6Uxl3vOz8BqKjqZvBkisHChgo8IpeE8oVPmMAEe2zhBaIj
 p4SNAeygEopSGHvWMY>
X-ME-Received: <xmr:6_rJaGQRPEfh-EJ_9z0fbnDt3nEvVRKVyJKMxQsaugT4I_pRY9gN9VZK7ANTKSRJvt9U3mkHwrY4JrUPWHa3t-dTfvVO7eBb2yoSZK-CL9Urqw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdegudeljecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekredtre
 dttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejuedvgf
 duudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgvrhfu
 ihiivgepudenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkh
 grmhhotggthhhirdhjphdpnhgspghrtghpthhtohepvddpmhhouggvpehsmhhtphhouhht
 pdhrtghpthhtoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtg
 gvfhhorhhgvgdrnhgvthdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghr
 rdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:6_rJaFby9-f6qoBBJd1qfLWTlCoT9P81fsU5T0DmsoBH70P4dgsDIA>
 <xmx:6_rJaD1qZTXv8FCS-K0TYwUuuCW8IiHymAb5AUtv3QJBWiJxlSCJsA>
 <xmx:6_rJaFUSW-QkvIaYpdUp21olUY38oAWur2YUw7UJH8aIJHHwiUeOWw>
 <xmx:6_rJaNWvZZJhSSHBmQqgNwlabw94e5K3_RAF_SjuNEdJMi-JyeM4Dw>
 <xmx:7PrJaL3oac1BI8zQiSCJgLBobiakFdUZBIMQxrxY1dE4STidL6vYT0li>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 16 Sep 2025 20:03:54 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 3/3] firewire: core: shrink critical section of fw_card
 spinlock in bm_work
Date: Wed, 17 Sep 2025 09:03:47 +0900
Message-ID: <20250917000347.52369-4-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250917000347.52369-1-o-takashi@sakamocchi.jp>
References: <20250917000347.52369-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Now fw_core_handle_bus_reset() and bm_work() are serialized.
 Some members of fw_card are free to access in bm_work() This commit shrinks
 critical section of fw_card spinlock in bm_work() Signed-off-by: Takashi
 Sakamoto <o-takashi@sakamocchi.jp> --- drivers/firewire/core-card.c | 30
 ++++++++ 1 file changed, 8 insertions(+), 22 deletions(-) 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1uyfeY-00046i-Nh
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

Now fw_core_handle_bus_reset() and bm_work() are serialized. Some members
of fw_card are free to access in bm_work()

This commit shrinks critical section of fw_card spinlock in bm_work()

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-card.c | 30 ++++++++----------------------
 1 file changed, 8 insertions(+), 22 deletions(-)

diff --git a/drivers/firewire/core-card.c b/drivers/firewire/core-card.c
index 96495392a1f6..4fcd5ce4b2ce 100644
--- a/drivers/firewire/core-card.c
+++ b/drivers/firewire/core-card.c
@@ -293,12 +293,8 @@ static void bm_work(struct work_struct *work)
 	int expected_gap_count, generation, grace;
 	bool do_reset = false;
 
-	spin_lock_irq(&card->lock);
-
-	if (card->local_node == NULL) {
-		spin_unlock_irq(&card->lock);
+	if (card->local_node == NULL)
 		return;
-	}
 
 	generation = card->generation;
 
@@ -354,8 +350,6 @@ static void bm_work(struct work_struct *work)
 			goto pick_me;
 		}
 
-		spin_unlock_irq(&card->lock);
-
 		rcode = fw_run_transaction(card, TCODE_LOCK_COMPARE_SWAP,
 				irm_id, generation, SCODE_100,
 				CSR_REGISTER_BASE + CSR_BUS_MANAGER_ID,
@@ -365,21 +359,20 @@ static void bm_work(struct work_struct *work)
 		if (rcode == RCODE_GENERATION)
 			return;
 
-		spin_lock_irq(&card->lock);
-
 		if (rcode == RCODE_COMPLETE) {
 			int bm_id = be32_to_cpu(data[0]);
 
 			if (generation == card->generation) {
-				if (bm_id != BUS_MANAGER_ID_NOT_REGISTERED)
-					card->bm_node_id = 0xffc0 & bm_id;
-				else
-					card->bm_node_id = local_id;
+				// Used by cdev layer for "struct fw_cdev_event_bus_reset".
+				scoped_guard(spinlock, &card->lock) {
+					if (bm_id != BUS_MANAGER_ID_NOT_REGISTERED)
+						card->bm_node_id = 0xffc0 & bm_id;
+					else
+						card->bm_node_id = local_id;
+				}
 			}
 
 			if (bm_id != BUS_MANAGER_ID_NOT_REGISTERED) {
-				spin_unlock_irq(&card->lock);
-
 				// Somebody else is BM.  Only act as IRM.
 				if (local_id == irm_id)
 					allocate_broadcast_channel(card, generation);
@@ -393,7 +386,6 @@ static void bm_work(struct work_struct *work)
 			 * some local problem.  Let's try again later and hope
 			 * that the problem has gone away by then.
 			 */
-			spin_unlock_irq(&card->lock);
 			fw_schedule_bm_work(card, msecs_to_jiffies(125));
 			return;
 		}
@@ -415,7 +407,6 @@ static void bm_work(struct work_struct *work)
 		 * We weren't BM in the last generation, and the last
 		 * bus reset is less than 125ms ago.  Reschedule this job.
 		 */
-		spin_unlock_irq(&card->lock);
 		fw_schedule_bm_work(card, msecs_to_jiffies(125));
 		return;
 	}
@@ -458,7 +449,6 @@ static void bm_work(struct work_struct *work)
 			if (!root_device_is_running) {
 				// If we haven't probed this device yet, bail out now
 				// and let's try again once that's done.
-				spin_unlock_irq(&card->lock);
 				return;
 			} else if (root_device->cmc) {
 				// We will send out a force root packet for this
@@ -495,8 +485,6 @@ static void bm_work(struct work_struct *work)
 	if (do_reset) {
 		int card_gap_count = card->gap_count;
 
-		spin_unlock_irq(&card->lock);
-
 		fw_notice(card, "phy config: new root=%x, gap_count=%d\n",
 			  new_root_id, expected_gap_count);
 		fw_send_phy_config(card, new_root_id, generation, expected_gap_count);
@@ -517,8 +505,6 @@ static void bm_work(struct work_struct *work)
 	} else {
 		struct fw_device *root_device = fw_node_get_device(root_node);
 
-		spin_unlock_irq(&card->lock);
-
 		if (root_device && root_device->cmc) {
 			// Make sure that the cycle master sends cycle start packets.
 			__be32 data = cpu_to_be32(CSR_STATE_BIT_CMSTR);
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
