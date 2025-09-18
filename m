Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 16BF4B8753A
	for <lists+linux1394-devel@lfdr.de>; Fri, 19 Sep 2025 01:09:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MaIq7GVBHui6rOqcaH4CzW5gSrJxe9Ub7/GNTWzM0Ug=; b=DOw7YXtmzUv+hfaIRLqFBz/J/d
	BoSod01hWWOzGYXADg3rkQYepXGv1NoJ1MN7qNMVBUSiHtMz3us7+u+R4vpGpr0GMd/DUbEzze6Uc
	iYJ3LrlWiZvmD4YNPsbO72TzlFtddhJ7jeg8h+7VtQmzyPMYXzduh2fXSEF1hwRCBV1o=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uzNkZ-0000zD-Q7;
	Thu, 18 Sep 2025 23:09:16 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uzNkX-0000yo-7W
 for linux1394-devel@lists.sourceforge.net;
 Thu, 18 Sep 2025 23:09:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=01wtiLF2Oli5HjGiFiR6KWpbzIl+tdOyk62gIR53vS4=; b=RKkVsSVc2cmkwuqApPq6rzPbSt
 aIJzYkLKI2oCv26rJwlWzkk0gsWUc64/Lml141v9uHsxrzWYcMlNipR2VEbsVXMmdzHogpxGvqeLh
 jXXEyank+B3f5hDZOdlXBeByxy3NBHvBG135Re0Q3iW+SnXEUhirQECrHt2oUPwi4xZ4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=01wtiLF2Oli5HjGiFiR6KWpbzIl+tdOyk62gIR53vS4=; b=SLYrvh0tR9oDp8E8+Z6Om5DSaJ
 GNtuwpAbMR0cNy6nwmI4efr5fYaP0QJNMtCz+xHX7I6ak/YWeJ29Z8IJAfGIO4xhCt+wcDst/L0vl
 +Ipt6esnsQ1pKcCUkWiT0BkGFGgfY4hr+W3yNkWaW3Y0A1lr71IGXjMRtHqQjyLNXA5A=;
Received: from fout-b1-smtp.messagingengine.com ([202.12.124.144])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uzNkX-00017q-8p for linux1394-devel@lists.sourceforge.net;
 Thu, 18 Sep 2025 23:09:13 +0000
Received: from phl-compute-11.internal (phl-compute-11.internal [10.202.2.51])
 by mailfout.stl.internal (Postfix) with ESMTP id BB68D1D002E9;
 Thu, 18 Sep 2025 19:09:07 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-11.internal (MEProxy); Thu, 18 Sep 2025 19:09:07 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1758236947; x=
 1758323347; bh=01wtiLF2Oli5HjGiFiR6KWpbzIl+tdOyk62gIR53vS4=; b=B
 wo9qiLZZxzkylcwlDeAwXThVQ5LG63aWr7wUZ0jxrduKmkEb6ngf4vDrEcsMAPEP
 7S1jL4e6Hn4iYhPnT5CVQ0UTeiDRd+hHrfiP/LSwFAu2bj3PG+jISch0mTkpQ+N9
 IluVw5PFJsj0ATIoWxV8Nw13F6w/kPzhNaLk5ZUyBhtvb6Ie3KJXoOQMihHG/jFu
 4MlCRb6ExbyLK5FL71BVdC5id/rTMfyDu/G1xOlIUwjv7C8rgtFI+aw5BHa4th8U
 cBafgbatA9xNqJq+XMXgnYL9+O5jgx9VnW4lKRhKI1RDDVPNiP5pdBen/9Ns5hsJ
 giKfqfFZwtAagQZRQrblQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1758236947; x=1758323347; bh=0
 1wtiLF2Oli5HjGiFiR6KWpbzIl+tdOyk62gIR53vS4=; b=A2G+or9tX+Xmw+aDg
 VtA9OceD5DHW/IQMqENax8fFsVdFNlr584nBJjwVLkEftNfQYYJ+PS2Q84DRNsr5
 1Iox9RHVJas5fq1mHj6wGxq39hryAvOAd+X7xOQxPzUclNmYaW5kGcRccv9HvFrD
 i5C8yGaFqvGXz48AarEJXFyk7DGoyqWvzErP7CPzJqeVGqQNQ2vPtwawUXXPhvs4
 o3N5OFawsx5mWSZ7UymXK4+tqtIiwM3Pcpdm6A+7OHy9va0Jw58etUMsZdSb/ADI
 g//Wp6x0zvG5MA4JtGdea9sisXRx2+ywO+ZnrRnwRJK+I4ik3M89LpuJfPfLPYTU
 Kj+7w==
X-ME-Sender: <xms:E5HMaPLEv0abmARZ5DEeDr39toLOl5BHY2-sU1dPkT_TiKEOvE6lrg>
 <xme:E5HMaMHEdr-zhpaVjtuICb4_4XpMiJqUoUwX30oMTpjJrHuDFZPi7lF9T3LqmpMBD
 LFJdIqwi0zPJwlfw4k>
X-ME-Received: <xmr:E5HMaJoX25fHEE7uvHCs7JTbfS1WGCaPGITmGSmCKKz4KeylMjG52d64UHhbRfFZV-6eSHGK5d5Eyz6IzHoH2ehr1mAEURciPgUjN4zCmhKgCGE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdegjeeiudcutefuodetggdotefrod
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
X-ME-Proxy: <xmx:E5HMaFQbCqmWed_tsBWrX0Rs8Y3mk9ugBFN0SQjNmX-Vps7ZPDcUwg>
 <xmx:E5HMaGMSHck1S-V1BA9rjzXoYAF0M7xP0JpktzBxM34MWuZh8F2eag>
 <xmx:E5HMaIPOp8GLqjL_SFLPv4yUFKjaSUWl6YScC37HLNXtyAHJuUsb8Q>
 <xmx:E5HMaGsjixsk92cJ_vzi_wcQai8dX1BelTGq1YvM9K9Q0xGi9i0KzA>
 <xmx:E5HMaDPpDqtGthjV9w0SS6vC-Nig7E8sLqGpPi6jIB31eWX4T9TpD6v7>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 18 Sep 2025 19:09:06 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 3/6] firewire: core: code refactoring for the case of
 generation mismatch
Date: Fri, 19 Sep 2025 08:08:54 +0900
Message-ID: <20250918230857.127400-4-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250918230857.127400-1-o-takashi@sakamocchi.jp>
References: <20250918230857.127400-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Current implementation stores the bus generation at which
 the bus manager contending procedure finishes. The condition for the procedure
 is the mismatch of the stored generation against current bus ge [...] 
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
X-Headers-End: 1uzNkX-00017q-8p
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

Current implementation stores the bus generation at which the bus manager
contending procedure finishes. The condition for the procedure is the
mismatch of the stored generation against current bus generation.

This commit refactors the code for the contending procedure. Two existing
branches are put into a new branch to detect the generation mismatch, thus
the most of change is indentation.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-card.c | 188 +++++++++++++++++------------------
 1 file changed, 93 insertions(+), 95 deletions(-)

diff --git a/drivers/firewire/core-card.c b/drivers/firewire/core-card.c
index e9bf8d93f5b7..02058af705cc 100644
--- a/drivers/firewire/core-card.c
+++ b/drivers/firewire/core-card.c
@@ -290,7 +290,7 @@ static void bm_work(struct work_struct *work)
 	struct fw_card *card __free(card_unref) = from_work(card, work, bm_work.work);
 	struct fw_node *root_node __free(node_unref) = NULL;
 	int root_id, new_root_id, irm_id, local_id;
-	int expected_gap_count, generation, grace;
+	int expected_gap_count, generation;
 	bool do_reset = false;
 
 	if (card->local_node == NULL)
@@ -304,107 +304,107 @@ static void bm_work(struct work_struct *work)
 	irm_id   = card->irm_node->node_id;
 	local_id = card->local_node->node_id;
 
-	grace = time_is_before_jiffies64(card->reset_jiffies + msecs_to_jiffies(125));
-
-	if ((is_next_generation(generation, card->bm_generation) &&
-	     !card->bm_abdicate) ||
-	    (card->bm_generation != generation && grace)) {
-		/*
-		 * This first step is to figure out who is IRM and
-		 * then try to become bus manager.  If the IRM is not
-		 * well defined (e.g. does not have an active link
-		 * layer or does not responds to our lock request, we
-		 * will have to do a little vigilante bus management.
-		 * In that case, we do a goto into the gap count logic
-		 * so that when we do the reset, we still optimize the
-		 * gap count.  That could well save a reset in the
-		 * next generation.
-		 */
-		__be32 data[2] = {
-			cpu_to_be32(BUS_MANAGER_ID_NOT_REGISTERED),
-			cpu_to_be32(local_id),
-		};
-		struct fw_device *irm_device = fw_node_get_device(card->irm_node);
-		bool irm_is_1394_1995_only = false;
-		bool keep_this_irm = false;
-		int rcode;
-
-		if (!card->irm_node->link_on) {
-			new_root_id = local_id;
-			fw_notice(card, "%s, making local node (%02x) root\n",
-				  "IRM has link off", new_root_id);
-			goto pick_me;
-		}
-
-		if (irm_device && irm_device->config_rom) {
-			irm_is_1394_1995_only = (irm_device->config_rom[2] & 0x000000f0) == 0;
-
-			// Canon MV5i works unreliably if it is not root node.
-			keep_this_irm = irm_device->config_rom[3] >> 8 == CANON_OUI;
-		}
+	if (card->bm_generation != generation) {
+		bool grace = time_is_before_jiffies64(card->reset_jiffies + msecs_to_jiffies(125));
+
+		if (grace ||
+		    (is_next_generation(generation, card->bm_generation) && !card->bm_abdicate)) {
+			// This first step is to figure out who is IRM and
+			// then try to become bus manager.  If the IRM is not
+			// well defined (e.g. does not have an active link
+			// layer or does not responds to our lock request, we
+			// will have to do a little vigilante bus management.
+			// In that case, we do a goto into the gap count logic
+			// so that when we do the reset, we still optimize the
+			// gap count.  That could well save a reset in the
+			// next generation.
+			__be32 data[2] = {
+				cpu_to_be32(BUS_MANAGER_ID_NOT_REGISTERED),
+				cpu_to_be32(local_id),
+			};
+			struct fw_device *irm_device = fw_node_get_device(card->irm_node);
+			bool irm_is_1394_1995_only = false;
+			bool keep_this_irm = false;
+			int rcode;
+
+			if (!card->irm_node->link_on) {
+				new_root_id = local_id;
+				fw_notice(card, "%s, making local node (%02x) root\n",
+					  "IRM has link off", new_root_id);
+				goto pick_me;
+			}
 
-		if (irm_is_1394_1995_only && !keep_this_irm) {
-			new_root_id = local_id;
-			fw_notice(card, "%s, making local node (%02x) root\n",
-				  "IRM is not 1394a compliant", new_root_id);
-			goto pick_me;
-		}
+			if (irm_device && irm_device->config_rom) {
+				irm_is_1394_1995_only = (irm_device->config_rom[2] & 0x000000f0) == 0;
 
-		rcode = fw_run_transaction(card, TCODE_LOCK_COMPARE_SWAP,
-				irm_id, generation, SCODE_100,
-				CSR_REGISTER_BASE + CSR_BUS_MANAGER_ID,
-				data, sizeof(data));
+				// Canon MV5i works unreliably if it is not root node.
+				keep_this_irm = irm_device->config_rom[3] >> 8 == CANON_OUI;
+			}
 
-		switch (rcode) {
-		case RCODE_GENERATION:
-			// Another bus reset, BM work has been rescheduled.
-			return;
-		case RCODE_SEND_ERROR:
-			// We have been unable to send the lock request due to
-			// some local problem.  Let's try again later and hope
-			// that the problem has gone away by then.
-			fw_schedule_bm_work(card, msecs_to_jiffies(125));
-			return;
-		case RCODE_COMPLETE:
-		{
-			int bm_id = be32_to_cpu(data[0]);
-
-			// Used by cdev layer for "struct fw_cdev_event_bus_reset".
-			scoped_guard(spinlock, &card->lock) {
-				if (bm_id != BUS_MANAGER_ID_NOT_REGISTERED)
-					card->bm_node_id = 0xffc0 & bm_id;
-				else
-					card->bm_node_id = local_id;
+			if (irm_is_1394_1995_only && !keep_this_irm) {
+				new_root_id = local_id;
+				fw_notice(card, "%s, making local node (%02x) root\n",
+					  "IRM is not 1394a compliant", new_root_id);
+				goto pick_me;
 			}
 
-			if (bm_id != BUS_MANAGER_ID_NOT_REGISTERED) {
-				// Somebody else is BM.  Only act as IRM.
-				if (local_id == irm_id)
-					allocate_broadcast_channel(card, generation);
+			rcode = fw_run_transaction(card, TCODE_LOCK_COMPARE_SWAP,
+					irm_id, generation, SCODE_100,
+					CSR_REGISTER_BASE + CSR_BUS_MANAGER_ID,
+					data, sizeof(data));
+
+			switch (rcode) {
+			case RCODE_GENERATION:
+				// Another bus reset, BM work has been rescheduled.
 				return;
+			case RCODE_SEND_ERROR:
+				// We have been unable to send the lock request due to
+				// some local problem.  Let's try again later and hope
+				// that the problem has gone away by then.
+				fw_schedule_bm_work(card, msecs_to_jiffies(125));
+				return;
+			case RCODE_COMPLETE:
+			{
+				int bm_id = be32_to_cpu(data[0]);
+
+				// Used by cdev layer for "struct fw_cdev_event_bus_reset".
+				scoped_guard(spinlock, &card->lock) {
+					if (bm_id != BUS_MANAGER_ID_NOT_REGISTERED)
+						card->bm_node_id = 0xffc0 & bm_id;
+					else
+						card->bm_node_id = local_id;
+				}
+
+				if (bm_id != BUS_MANAGER_ID_NOT_REGISTERED) {
+					// Somebody else is BM.  Only act as IRM.
+					if (local_id == irm_id)
+						allocate_broadcast_channel(card, generation);
+					return;
+				}
+				break;
 			}
-			break;
-		}
-		default:
-			if (!keep_this_irm) {
-				// The lock request failed, maybe the IRM
-				// isn't really IRM capable after all. Let's
-				// do a bus reset and pick the local node as
-				// root, and thus, IRM.
-				new_root_id = local_id;
-				fw_notice(card, "BM lock failed (%s), making local node (%02x) root\n",
-					  fw_rcode_string(rcode), new_root_id);
-				goto pick_me;
+			default:
+				if (!keep_this_irm) {
+					// The lock request failed, maybe the IRM
+					// isn't really IRM capable after all. Let's
+					// do a bus reset and pick the local node as
+					// root, and thus, IRM.
+					new_root_id = local_id;
+					fw_notice(card, "BM lock failed (%s), making local node (%02x) root\n",
+						  fw_rcode_string(rcode), new_root_id);
+					goto pick_me;
+				}
+				break;
 			}
-			break;
+
+			// A node contends for bus manager in this generation.
+			card->bm_generation = generation;
+		} else {
+			// We weren't BM in the last generation, and the last
+			// bus reset is less than 125ms ago.  Reschedule this job.
+			fw_schedule_bm_work(card, msecs_to_jiffies(125));
+			return;
 		}
-	} else if (card->bm_generation != generation) {
-		/*
-		 * We weren't BM in the last generation, and the last
-		 * bus reset is less than 125ms ago.  Reschedule this job.
-		 */
-		fw_schedule_bm_work(card, msecs_to_jiffies(125));
-		return;
 	}
 
 	/*
@@ -412,8 +412,6 @@ static void bm_work(struct work_struct *work)
 	 * make sure we have an active cycle master and do gap count
 	 * optimization.
 	 */
-	card->bm_generation = generation;
-
 	if (card->gap_count == GAP_COUNT_MISMATCHED) {
 		/*
 		 * If self IDs have inconsistent gap counts, do a
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
