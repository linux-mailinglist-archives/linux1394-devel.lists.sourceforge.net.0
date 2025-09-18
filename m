Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 81D04B876E2
	for <lists+linux1394-devel@lfdr.de>; Fri, 19 Sep 2025 01:55:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VWhpQgp62iwA9YYoZspm2+csYXSO8aB6dNUuXofclKs=; b=hcb7MvDfFlab5//b9Zn+or6wQh
	828RGFmn5AT4x0miqTRs/u/wQ6f+/Dz5hjd1F8Z1UskebrjpKd4LrhFd+d3sB54PK5W+p8f/EkcDx
	Ni6kkbHs/5TPAQMm4PEHcyZWFpH7Fs3Cbqorz62Pe4ayPV5qrtfX8v0cXsKOy70bwGZY=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uzOT1-0003Gg-MH;
	Thu, 18 Sep 2025 23:55:11 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uzOSz-0003GX-MO
 for linux1394-devel@lists.sourceforge.net;
 Thu, 18 Sep 2025 23:55:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sAuUoMVEHwZXFy2qdrfe1k/tghXZlxjrtGmNtSZya9k=; b=OtxxfJ9mM7z1hW2vDvE0VQKOEc
 WWmlUdpIXdSfgIjMTzJUGn1ewp7ARBQ0/oZqQD9aXPkzHKkXHzCEpBU16xPBo7c5zG4hNxluQRSMo
 xxeB3q9PtNkImQs/lJgh5DHIMm9dkN5cquBUzhUAXGqd0fyX2jvOwV+rszcrJbFSxVVA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sAuUoMVEHwZXFy2qdrfe1k/tghXZlxjrtGmNtSZya9k=; b=V3Myv1EjOfDscmZnQ+1vkhk8ep
 Kbdbn1gQOEsXPrpRRl7hyioY3DXJe+ZKIPHI4HJGzHQJcdnlfSvmmXyLeL+bMMB6jevNwMqdHMoA7
 NkinR/k742ThGUWgT+TzUJWQM13h71hWjPcyHgjy1rNsA9DhG+U7Po3Z2MD+fgRBUjwc=;
Received: from fout-b1-smtp.messagingengine.com ([202.12.124.144])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uzOSy-0003SP-SF for linux1394-devel@lists.sourceforge.net;
 Thu, 18 Sep 2025 23:55:09 +0000
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
 by mailfout.stl.internal (Postfix) with ESMTP id 61A721D002E6;
 Thu, 18 Sep 2025 19:54:58 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-04.internal (MEProxy); Thu, 18 Sep 2025 19:54:58 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1758239698; x=
 1758326098; bh=sAuUoMVEHwZXFy2qdrfe1k/tghXZlxjrtGmNtSZya9k=; b=D
 /i2xbP11AnVoZyNAK4EU3b2t2HLfYoyRMFFQmc/13MmAeESzhY+oWqxpKgLNH3IH
 qgP/aQhAXbip3h5Macx5RppNEQuzacmAvnlFKyPUJR+t7UD2np4sZe1E8MjMvRfF
 GrRHC26TbriCu4NyVUVgZmohZ3zJ5ZTliCAPj6/oxI/IGaxzHcH+RT0B7erW2Dqb
 5aFhsSNyaxmbv/0EenP9EY+7oz+yjXYspPpyvT/uprBZKzYMNzqXmuSeAj1fHJde
 hncbhCA+0rSzU+5soh9/fEWPr8mzgQwPKLQ4Z1/0VFNEgDIBxYv+WDO9KtzL6vMG
 NVG9BvwJqIVUSQgXmHrBw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1758239698; x=1758326098; bh=s
 AuUoMVEHwZXFy2qdrfe1k/tghXZlxjrtGmNtSZya9k=; b=HYSwgwn2aMRFhTvHf
 G3FFZeds2pR4OFzTSQOecBCOrYZwlsT/xdiU/8qyWAFM0ZXuW6q+7rwMwVQ0H1/C
 AxbyKY3If8OnfVIF0yup5DSZDWylxgdQKWyKQwrXA5LEp/AhiP7QlXskIOXtIQST
 yZMOBEBy3mDg0r8ZPsWyHiZx4hdjRy6wBZ32j7jheLfgJX6CtuBseg3bCFNMzNYF
 TFCSzMFCj7nl3MlzDVm5YaAeUKzkNcmoHQBAp02om+GHf/Fj98jqChO+YeaLKI/A
 EruCCnSlnE/V55Rox9Aj1vVUFrqXqCgRBEFCt877bQ+zuh3ngxz2NhnZxlyHy6Bg
 2ArvQ==
X-ME-Sender: <xms:0pvMaHiLjLKfa7zyhjpoI0i09IJKTDNXi6eO9TOIE2iBE_H21FN_pA>
 <xme:0pvMaM-vi9cDcNxMp4tA-ctev8q4X5Ey0grWGSLfXJu4lgfwT9EImzZ6Ah6zYFO6c
 U6p19N2GKQBdk8Qxkc>
X-ME-Received: <xmr:0pvMaJDA2XgTNl_Em7ENIySaGVPmcpF_S-1e-2-AJgHTzZvExiGpDExb2PAVJUgwFYewhAobrdZNNuejFjSMRnAwy8H0-QoYOErddUxPD3tBONs>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdegjeejtdcutefuodetggdotefrod
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
X-ME-Proxy: <xmx:0pvMaBIQDVioFBOEZB4tdpBS_GsW08aBvMFLy0U7FQBwi4pvBoJtKg>
 <xmx:0pvMaEn7aVhplVL2rPPRkqmaGyQpXZ3Nw8Euz9UAbgjd7h_iBvUMdQ>
 <xmx:0pvMaHGcrQbe95wEB8oN1JQiva5lL4AsLULEgXre_LefBEZqxe_lbQ>
 <xmx:0pvMaMGlb_Gbc8ZxbeCrn3Ftqf4v__qurWMuwd92g-GX7665rkGYNA>
 <xmx:0pvMaGlUoUwSkoHkYbG6o7o2z-U3IvS-sz0HSWedKwcnNuKx8kcYPtgq>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 18 Sep 2025 19:54:57 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH v2 4/6] firewire: core: code refactoring to split contention
 procedure for bus manager
Date: Fri, 19 Sep 2025 08:54:46 +0900
Message-ID: <20250918235448.129705-5-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250918230857.127400-1-o-takashi@sakamocchi.jp>
References: <20250918230857.127400-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The precedure to contend for bus manager has much code. It
 is better to split it into a helper function. This commit refactors in the
 point. Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp> ---
 drivers/firewire/core-card.c
 | 223 ++++++++++++++++++++ 1 file changed, 127 insertions(+), 96 deletions(-)
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
X-Headers-End: 1uzOSy-0003SP-SF
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

The precedure to contend for bus manager has much code. It is better to
split it into a helper function.

This commit refactors in the point.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-card.c | 223 ++++++++++++++++++++---------------
 1 file changed, 127 insertions(+), 96 deletions(-)

diff --git a/drivers/firewire/core-card.c b/drivers/firewire/core-card.c
index 02058af705cc..6268b595d4fa 100644
--- a/drivers/firewire/core-card.c
+++ b/drivers/firewire/core-card.c
@@ -279,6 +279,102 @@ void fw_schedule_bm_work(struct fw_card *card, unsigned long delay)
 		fw_card_put(card);
 }
 
+enum bm_contention_outcome {
+	// The bus management contention window is not expired.
+	BM_CONTENTION_OUTCOME_WITHIN_WINDOW = 0,
+	// The IRM node has link off.
+	BM_CONTENTION_OUTCOME_IRM_HAS_LINK_OFF,
+	// The IRM node complies IEEE 1394:1994 only.
+	BM_CONTENTION_OUTCOME_IRM_COMPLIES_1394_1995_ONLY,
+	// Another bus reset, BM work has been rescheduled.
+	BM_CONTENTION_OUTCOME_AT_NEW_GENERATION,
+	// We have been unable to send the lock request to IRM node due to some local problem.
+	BM_CONTENTION_OUTCOME_LOCAL_PROBLEM_AT_TRANSACTION,
+	// The lock request failed, maybe the IRM isn't really IRM capable after all.
+	BM_CONTENTION_OUTCOME_IRM_IS_NOT_CAPABLE_FOR_IRM,
+	// Somebody else is BM.
+	BM_CONTENTION_OUTCOME_IRM_HOLDS_ANOTHER_NODE_AS_BM,
+	// The local node succeeds after contending for bus manager.
+	BM_CONTENTION_OUTCOME_IRM_HOLDS_LOCAL_NODE_AS_BM,
+};
+
+static enum bm_contention_outcome contend_for_bm(struct fw_card *card)
+{
+	int generation = card->generation;
+	int local_id = card->local_node->node_id;
+	__be32 data[2] = {
+		cpu_to_be32(BUS_MANAGER_ID_NOT_REGISTERED),
+		cpu_to_be32(local_id),
+	};
+	bool grace = time_is_before_jiffies64(card->reset_jiffies + msecs_to_jiffies(125));
+	bool irm_is_1394_1995_only = false;
+	bool keep_this_irm = false;
+	struct fw_node *irm_node;
+	struct fw_device *irm_device;
+	int rcode;
+
+	if (!grace) {
+		if (!is_next_generation(generation, card->bm_generation) || card->bm_abdicate)
+			return BM_CONTENTION_OUTCOME_WITHIN_WINDOW;
+	}
+
+	irm_node = card->irm_node;
+	if (!irm_node->link_on) {
+		fw_notice(card, "IRM has link off, making local node (%02x) root\n", local_id);
+		return BM_CONTENTION_OUTCOME_IRM_HAS_LINK_OFF;
+	}
+
+	irm_device = fw_node_get_device(irm_node);
+	if (irm_device && irm_device->config_rom) {
+		irm_is_1394_1995_only = (irm_device->config_rom[2] & 0x000000f0) == 0;
+
+		// Canon MV5i works unreliably if it is not root node.
+		keep_this_irm = irm_device->config_rom[3] >> 8 == CANON_OUI;
+	}
+
+	if (irm_is_1394_1995_only && !keep_this_irm) {
+		fw_notice(card, "IRM is not 1394a compliant, making local node (%02x) root\n",
+			  local_id);
+		return BM_CONTENTION_OUTCOME_IRM_COMPLIES_1394_1995_ONLY;
+	}
+
+	rcode = fw_run_transaction(card, TCODE_LOCK_COMPARE_SWAP, irm_node->node_id, generation,
+				   SCODE_100, CSR_REGISTER_BASE + CSR_BUS_MANAGER_ID, data,
+				   sizeof(data));
+
+	switch (rcode) {
+	case RCODE_GENERATION:
+		return BM_CONTENTION_OUTCOME_AT_NEW_GENERATION;
+	case RCODE_SEND_ERROR:
+		return BM_CONTENTION_OUTCOME_LOCAL_PROBLEM_AT_TRANSACTION;
+	case RCODE_COMPLETE:
+	{
+		int bm_id = be32_to_cpu(data[0]);
+
+		// Used by cdev layer for "struct fw_cdev_event_bus_reset".
+		scoped_guard(spinlock, &card->lock) {
+			if (bm_id != BUS_MANAGER_ID_NOT_REGISTERED)
+				card->bm_node_id = 0xffc0 & bm_id;
+			else
+				card->bm_node_id = local_id;
+		}
+
+		if (bm_id != BUS_MANAGER_ID_NOT_REGISTERED)
+			return BM_CONTENTION_OUTCOME_IRM_HOLDS_ANOTHER_NODE_AS_BM;
+		else
+			return BM_CONTENTION_OUTCOME_IRM_HOLDS_LOCAL_NODE_AS_BM;
+	}
+	default:
+		if (!keep_this_irm) {
+			fw_notice(card, "BM lock failed (%s), making local node (%02x) root\n",
+				  fw_rcode_string(rcode), local_id);
+			return BM_CONTENTION_OUTCOME_IRM_COMPLIES_1394_1995_ONLY;
+		} else {
+			return BM_CONTENTION_OUTCOME_IRM_IS_NOT_CAPABLE_FOR_IRM;
+		}
+	}
+}
+
 DEFINE_FREE(node_unref, struct fw_node *, if (_T) fw_node_put(_T))
 DEFINE_FREE(card_unref, struct fw_card *, if (_T) fw_card_put(_T))
 
@@ -305,105 +401,40 @@ static void bm_work(struct work_struct *work)
 	local_id = card->local_node->node_id;
 
 	if (card->bm_generation != generation) {
-		bool grace = time_is_before_jiffies64(card->reset_jiffies + msecs_to_jiffies(125));
-
-		if (grace ||
-		    (is_next_generation(generation, card->bm_generation) && !card->bm_abdicate)) {
-			// This first step is to figure out who is IRM and
-			// then try to become bus manager.  If the IRM is not
-			// well defined (e.g. does not have an active link
-			// layer or does not responds to our lock request, we
-			// will have to do a little vigilante bus management.
-			// In that case, we do a goto into the gap count logic
-			// so that when we do the reset, we still optimize the
-			// gap count.  That could well save a reset in the
-			// next generation.
-			__be32 data[2] = {
-				cpu_to_be32(BUS_MANAGER_ID_NOT_REGISTERED),
-				cpu_to_be32(local_id),
-			};
-			struct fw_device *irm_device = fw_node_get_device(card->irm_node);
-			bool irm_is_1394_1995_only = false;
-			bool keep_this_irm = false;
-			int rcode;
-
-			if (!card->irm_node->link_on) {
-				new_root_id = local_id;
-				fw_notice(card, "%s, making local node (%02x) root\n",
-					  "IRM has link off", new_root_id);
-				goto pick_me;
-			}
+		enum bm_contention_outcome result = contend_for_bm(card);
 
-			if (irm_device && irm_device->config_rom) {
-				irm_is_1394_1995_only = (irm_device->config_rom[2] & 0x000000f0) == 0;
-
-				// Canon MV5i works unreliably if it is not root node.
-				keep_this_irm = irm_device->config_rom[3] >> 8 == CANON_OUI;
-			}
-
-			if (irm_is_1394_1995_only && !keep_this_irm) {
-				new_root_id = local_id;
-				fw_notice(card, "%s, making local node (%02x) root\n",
-					  "IRM is not 1394a compliant", new_root_id);
-				goto pick_me;
-			}
-
-			rcode = fw_run_transaction(card, TCODE_LOCK_COMPARE_SWAP,
-					irm_id, generation, SCODE_100,
-					CSR_REGISTER_BASE + CSR_BUS_MANAGER_ID,
-					data, sizeof(data));
-
-			switch (rcode) {
-			case RCODE_GENERATION:
-				// Another bus reset, BM work has been rescheduled.
-				return;
-			case RCODE_SEND_ERROR:
-				// We have been unable to send the lock request due to
-				// some local problem.  Let's try again later and hope
-				// that the problem has gone away by then.
-				fw_schedule_bm_work(card, msecs_to_jiffies(125));
-				return;
-			case RCODE_COMPLETE:
-			{
-				int bm_id = be32_to_cpu(data[0]);
-
-				// Used by cdev layer for "struct fw_cdev_event_bus_reset".
-				scoped_guard(spinlock, &card->lock) {
-					if (bm_id != BUS_MANAGER_ID_NOT_REGISTERED)
-						card->bm_node_id = 0xffc0 & bm_id;
-					else
-						card->bm_node_id = local_id;
-				}
-
-				if (bm_id != BUS_MANAGER_ID_NOT_REGISTERED) {
-					// Somebody else is BM.  Only act as IRM.
-					if (local_id == irm_id)
-						allocate_broadcast_channel(card, generation);
-					return;
-				}
-				break;
-			}
-			default:
-				if (!keep_this_irm) {
-					// The lock request failed, maybe the IRM
-					// isn't really IRM capable after all. Let's
-					// do a bus reset and pick the local node as
-					// root, and thus, IRM.
-					new_root_id = local_id;
-					fw_notice(card, "BM lock failed (%s), making local node (%02x) root\n",
-						  fw_rcode_string(rcode), new_root_id);
-					goto pick_me;
-				}
-				break;
-			}
-
-			// A node contends for bus manager in this generation.
-			card->bm_generation = generation;
-		} else {
-			// We weren't BM in the last generation, and the last
-			// bus reset is less than 125ms ago.  Reschedule this job.
+		switch (result) {
+		case BM_CONTENTION_OUTCOME_WITHIN_WINDOW:
 			fw_schedule_bm_work(card, msecs_to_jiffies(125));
 			return;
+		case BM_CONTENTION_OUTCOME_IRM_HAS_LINK_OFF:
+			new_root_id = local_id;
+			goto pick_me;
+		case BM_CONTENTION_OUTCOME_IRM_COMPLIES_1394_1995_ONLY:
+			new_root_id = local_id;
+			goto pick_me;
+		case BM_CONTENTION_OUTCOME_AT_NEW_GENERATION:
+			// BM work has been rescheduled.
+			return;
+		case BM_CONTENTION_OUTCOME_LOCAL_PROBLEM_AT_TRANSACTION:
+			// Let's try again later and hope that the local problem has gone away by
+			// then.
+			fw_schedule_bm_work(card, msecs_to_jiffies(125));
+			return;
+		case BM_CONTENTION_OUTCOME_IRM_IS_NOT_CAPABLE_FOR_IRM:
+			// Let's do a bus reset and pick the local node as root, and thus, IRM.
+			new_root_id = local_id;
+			goto pick_me;
+		case BM_CONTENTION_OUTCOME_IRM_HOLDS_ANOTHER_NODE_AS_BM:
+			if (local_id == irm_id) {
+				// Only acts as IRM.
+				allocate_broadcast_channel(card, generation);
+			}
+			fallthrough;
+		case BM_CONTENTION_OUTCOME_IRM_HOLDS_LOCAL_NODE_AS_BM:
+		default:
+			card->bm_generation = generation;
+			break;
 		}
 	}
 
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
