Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 87519B5888E
	for <lists+linux1394-devel@lfdr.de>; Tue, 16 Sep 2025 01:48:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qphmOw1V4FUcUv6l/a7wWh/Jv95a7b8WdWw6Ohrlj6k=; b=GdY5MkoM1Ud6CVWibzbU9rSHPz
	Zlf+pIiUABg3aVFZUZK8V8eFloTLrwMoiA7YPJJuraiX74S4EWSmW969l//jyzlFC1hKDOQmDwUB5
	NIqtQgjYyY+XpQK9gC5TGyWxFuMcxtFpwJ9AzfmyTttslCLiIW3E/NscBYc4e4BTfp5w=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uyIvY-0002hh-4O;
	Mon, 15 Sep 2025 23:48:08 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uyIvU-0002h3-HV
 for linux1394-devel@lists.sourceforge.net;
 Mon, 15 Sep 2025 23:48:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TVLAZiE8S6oLCOMyBp6Z+AOI4tSEx9bMWEKSAF910Rk=; b=WxPSfbILn74YwnRHgzDLtdMn7F
 KlYTES8wwh2pSs6T4ntEwxM/1R/qlrsOQrgwFSq+Y/F7GSayk5FebjHlIpwKFaUO/GS1YPHhvvcBf
 j9tlfuZ3EfM85QfaT4H3e9bpmw3UyMLsbI+FlhXDiPUX2wf4K/TWMgB/SJPkwe7Ggkkg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TVLAZiE8S6oLCOMyBp6Z+AOI4tSEx9bMWEKSAF910Rk=; b=JkmgUhxm9JwRHs94EihbNofQiC
 IES00fL61LufoK7syUTh16Hye4fx3PUnpDICcW6HMkWEYDkWSmewyk9+YWPGHGjNJRO0HEScAAaOE
 w2vrbqry0JBx1+tyET+C5ytBz8YjBgpMx1Z83qVW3Kh5TQ4Uo+vP8DaIRHtiI2hdTAiY=;
Received: from fout-b5-smtp.messagingengine.com ([202.12.124.148])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uyIvT-0002K5-G0 for linux1394-devel@lists.sourceforge.net;
 Mon, 15 Sep 2025 23:48:04 +0000
Received: from phl-compute-11.internal (phl-compute-11.internal [10.202.2.51])
 by mailfout.stl.internal (Postfix) with ESMTP id DF3FD1D001C2;
 Mon, 15 Sep 2025 19:47:52 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-11.internal (MEProxy); Mon, 15 Sep 2025 19:47:52 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1757980072; x=
 1758066472; bh=TVLAZiE8S6oLCOMyBp6Z+AOI4tSEx9bMWEKSAF910Rk=; b=Y
 13EsDhwWYzR3WvMUFORzFdbSUpAFPTq38GWvryOV0e3ULJuPshh8fZnUzUnZaA95
 CQDGz+A9YmsoELOLhLNi5W0QYzSx03lK4ijM+C6BerTbLfFDgnSwoGGcRjw0pv5o
 wA6iDgFsZd1lAxoIAn7Pauc04iGoXM2PNi5jnm4+liI7LF6W86qGpVE9iaIJrnh7
 euyY05AO83R0Wk2F5pmHCFRjK6SQpvxonUd+w9oUGVBIVoBItGR8kzof4PRPOShR
 touc8bt48VVY7pu22qyKLMB2L8IExB/NNroIDUJEEqzuzEVCkYwRAwWzPlH6KTJM
 Nm6BWPL78l9CNTdPGITOQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1757980072; x=1758066472; bh=T
 VLAZiE8S6oLCOMyBp6Z+AOI4tSEx9bMWEKSAF910Rk=; b=k2/z/z+PhPie740iq
 U1dk0p9DF/ztMps4i5q24wuTqDhLBzOTZ4CFimP79zbvsltJJxCnWEBzNTYIs69s
 VamGpUqHmL0zDiTNF0xEqVnzuslT7wKsT33V5JOtvxtqK9XscSC3U6e6z/yMUvdr
 ZOsBQBYOTotRFPfLaSuAlCsQwCRiDsQtsQKYXRdYRtOtjFdlwsMv32tgOREDjQCB
 x6MYbp4GlQE5Q+eikt6tXqEgZ74JYFglhskGKVcGOhNCT2z3UpudoDk+tDL4kp/o
 xWQ7icPaeJNuvnRFcLht3tA/Bzs23J3KO166KBov0u0GY7/7dgh7IS4WiTKrpFR5
 uzHYA==
X-ME-Sender: <xms:qKXIaHcI4AuFCR0w96bB9F8TgnQIn445HAeEp_GDkgnY5sqACxxPFw>
 <xme:qKXIaGICeT9uMp60r0EPtuCPbhCDz0ujZP4nmuTQvs2Uq23jsG3vOfJOlrsNuYExG
 2J9vEgcoGOXbPyrKXs>
X-ME-Received: <xmr:qKXIaCf7mYowNCfpjBqejQnl3cXQLxP31aFcwdn-wXcVIIG6T7BK8YbavfpgADcUBzyCdFAJVlQnLeRCEXgbJDaKgyYrBsF4DLUEz4gHaAFlxw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdefledtgecutefuodetggdotefrod
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
X-ME-Proxy: <xmx:qKXIaF2svZBnz2GzxtBXo7yyWPlHYLb1sV_keVJboZkXeCRSa88x1A>
 <xmx:qKXIaDjpK0eYMxnFZFnk2NRv97gpFFQ7YMcAZjbmGHlZoN5Ab6HF4A>
 <xmx:qKXIaDSlWIXpe34Hu3SpukZAKfM89iIJggLm5QTLUCjwxxRS_zMSvA>
 <xmx:qKXIaMiS5belhL3x3pivEEwcI_wrIE23EDHmk57RHmZsVM13VAyoIg>
 <xmx:qKXIaKA2zsVjPj01D63RFcKRG-L4gUFPBPsgWOQ5UTIIZEmAng115WUi>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 15 Sep 2025 19:47:51 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 1/6] firewire: core: use scoped_guard() to manage critical
 section to update topology
Date: Tue, 16 Sep 2025 08:47:42 +0900
Message-ID: <20250915234747.915922-2-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250915234747.915922-1-o-takashi@sakamocchi.jp>
References: <20250915234747.915922-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  At present, guard() macro is used for the critical section
 to update topology. It is inconvenient to add the other critical sections
 into the function. This commit uses scoped_guard() macro instead.
 Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp> ---
 drivers/firewire/core-topology.c
 | 74 +++++++++++++++ 1 file changed, 34 insertions(+), 40 deletions(-) 
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
X-Headers-End: 1uyIvT-0002K5-G0
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

At present, guard() macro is used for the critical section to update
topology. It is inconvenient to add the other critical sections into
the function.

This commit uses scoped_guard() macro instead.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-topology.c | 74 +++++++++++++++-----------------
 1 file changed, 34 insertions(+), 40 deletions(-)

diff --git a/drivers/firewire/core-topology.c b/drivers/firewire/core-topology.c
index 5f8fb1201d80..17aaf14cab0b 100644
--- a/drivers/firewire/core-topology.c
+++ b/drivers/firewire/core-topology.c
@@ -458,46 +458,40 @@ void fw_core_handle_bus_reset(struct fw_card *card, int node_id, int generation,
 
 	trace_bus_reset_handle(card->index, generation, node_id, bm_abdicate, self_ids, self_id_count);
 
-	guard(spinlock_irqsave)(&card->lock);
-
-	/*
-	 * If the selfID buffer is not the immediate successor of the
-	 * previously processed one, we cannot reliably compare the
-	 * old and new topologies.
-	 */
-	if (!is_next_generation(generation, card->generation) &&
-	    card->local_node != NULL) {
-		fw_destroy_nodes(card);
-		card->bm_retries = 0;
-	}
-
-	card->broadcast_channel_allocated = card->broadcast_channel_auto_allocated;
-	card->node_id = node_id;
-	/*
-	 * Update node_id before generation to prevent anybody from using
-	 * a stale node_id together with a current generation.
-	 */
-	smp_wmb();
-	card->generation = generation;
-	card->reset_jiffies = get_jiffies_64();
-	card->bm_node_id  = 0xffff;
-	card->bm_abdicate = bm_abdicate;
-	fw_schedule_bm_work(card, 0);
-
-	local_node = build_tree(card, self_ids, self_id_count, generation);
-
-	update_topology_map(card, self_ids, self_id_count);
-
-	card->color++;
-
-	if (local_node == NULL) {
-		fw_err(card, "topology build failed\n");
-		/* FIXME: We need to issue a bus reset in this case. */
-	} else if (card->local_node == NULL) {
-		card->local_node = local_node;
-		for_each_fw_node(card, local_node, report_found_node);
-	} else {
-		update_tree(card, local_node);
+	scoped_guard(spinlock, &card->lock) {
+		// If the selfID buffer is not the immediate successor of the
+		// previously processed one, we cannot reliably compare the
+		// old and new topologies.
+		if (!is_next_generation(generation, card->generation) && card->local_node != NULL) {
+			fw_destroy_nodes(card);
+			card->bm_retries = 0;
+		}
+		card->broadcast_channel_allocated = card->broadcast_channel_auto_allocated;
+		card->node_id = node_id;
+		// Update node_id before generation to prevent anybody from using
+		// a stale node_id together with a current generation.
+		smp_wmb();
+		card->generation = generation;
+		card->reset_jiffies = get_jiffies_64();
+		card->bm_node_id  = 0xffff;
+		card->bm_abdicate = bm_abdicate;
+		fw_schedule_bm_work(card, 0);
+
+		local_node = build_tree(card, self_ids, self_id_count, generation);
+
+		update_topology_map(card, self_ids, self_id_count);
+
+		card->color++;
+
+		if (local_node == NULL) {
+			fw_err(card, "topology build failed\n");
+			// FIXME: We need to issue a bus reset in this case.
+		} else if (card->local_node == NULL) {
+			card->local_node = local_node;
+			for_each_fw_node(card, local_node, report_found_node);
+		} else {
+			update_tree(card, local_node);
+		}
 	}
 }
 EXPORT_SYMBOL(fw_core_handle_bus_reset);
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
