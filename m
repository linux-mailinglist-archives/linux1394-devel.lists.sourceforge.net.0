Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 87902B5605C
	for <lists+linux1394-devel@lfdr.de>; Sat, 13 Sep 2025 12:57:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6WzHzRfZ0M6vPnap7GxcqWFrYXAldFsNDWR3MhgUGt4=; b=IJPQhQ0IyCdDfmchZS1PpJohfa
	pJaUa/Ls2ulrUPYNFyEdUu5jElUMeskz6fxXHGwRAuxdk7maKmWkb3YrlwsQ6jT6UmW7WgVUtyacr
	Hu/GzfptA02fl+FpPIKmW9dIGRrT/dWNCVocOtePr2ZE46klyDjcbcIvIGeCQ2Tcx2bE=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uxNwz-000123-HA;
	Sat, 13 Sep 2025 10:57:50 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uxNwy-00011r-O1
 for linux1394-devel@lists.sourceforge.net;
 Sat, 13 Sep 2025 10:57:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6WxZ6ngxHySIOsCplz04PSONOpKSebdtsflfhWY8CVQ=; b=brfZz3/KsqORrVLSKQUMTTrfdM
 diXRNEVm7I1fh5zK3utiqCNxtWBVGCtjFSHPT6583/iGZmzbcy//eU8SK8rjVhXqMNYjPrsd++010
 lU6NYqv3uDn7fn+Db6U+n4zObMeJnpfEX7VrXpoWcpLUp52U88dmIsA0XEqDg1FVL3F4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6WxZ6ngxHySIOsCplz04PSONOpKSebdtsflfhWY8CVQ=; b=F+fhWkCipV+ZnVBeNix1pK1fFJ
 GKoe00L7iJXiTop0YJHSmrMN56yIps9vpC1ErgmZdgLLiBMuVu6c4k24zCgDbyyeuK/KMz1r6sgHD
 3Q5mBF77YJfJjMykPczlEQ7ktP/TsP13edHd1UbT02W7BWLD+q/xr3pVu9MRpSBmhfyo=;
Received: from fout-a2-smtp.messagingengine.com ([103.168.172.145])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uxNwz-0000pj-1p for linux1394-devel@lists.sourceforge.net;
 Sat, 13 Sep 2025 10:57:49 +0000
Received: from phl-compute-11.internal (phl-compute-11.internal [10.202.2.51])
 by mailfout.phl.internal (Postfix) with ESMTP id 84BD1EC018B;
 Sat, 13 Sep 2025 06:57:43 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-11.internal (MEProxy); Sat, 13 Sep 2025 06:57:43 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1757761063; x=
 1757847463; bh=6WxZ6ngxHySIOsCplz04PSONOpKSebdtsflfhWY8CVQ=; b=U
 CW+UtA8Xau9Z2ohr/uEdv08MoqPh216jo8/PsX2WG771BNanrUQyolIcqq4UT2uY
 tgCZKkHUtNRqYwRHh0B8S42aFTKIyWROgpweXmirLe3Pq/7+qcenxph75AZax+Da
 sZH15T0Qv53bZeAs6GpKSI1epH+/IurECD9rIHEkYEEUcDpQn/1tXj6epYSKOgYN
 hTrUdH4TE0+lk00plKG61AUVK6yd2HUPo85DEtNh5oPX/uwbA5NodmVv5WCsww4k
 yMPHErdU4dsdPOsyEsE2udSRsYkKhi/VZEaibyG1AkAX1ruEUUCJmZYhwRtIoMJ+
 gS7mzdVOxOrXbA3Ht4wtg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1757761063; x=1757847463; bh=6
 WxZ6ngxHySIOsCplz04PSONOpKSebdtsflfhWY8CVQ=; b=O80pICcHt4K9ooklN
 UWLQ5UqJJC+/lDvu2CFyttdXJaKV5eLopND92uFmOuYq1jyxiQzdpKb6rr8CI4CW
 YpZyrhOYmSAuRBLKHfH3fMhEbQAM3npEdcku5e68gcqWFDPSfYIwWDIvl1QJRhyj
 y1AwhuwMTQ2QD/3jI2e0Scr9pHr97/gFqYos75dw2KY79l6bs5EZioHSrgn6stWr
 Mr0QeeapTIwz3aBclOZ7z0NRwoI+XK5AADfnkSCxI+6+KCqTtnyuOmSgamHK9CcZ
 SRzxbd+SExvEmHXtDAxyBkhSHZb0AI/bca/IzQhxWkH1nB9rO/tpKmYADJO65q25
 DMbqg==
X-ME-Sender: <xms:J07FaEBxina8NXFmoZ7bac8XYvY-57Ig0bZJblGjApwzps-p0AtDMg>
 <xme:J07FaPc1eKv08xxJfEqQTnJtQC7OhC12Ehk0LwXZJ-Zx5hYP71su12RDcQV9U75eP
 CNGKn3sqtXHx8HarUA>
X-ME-Received: <xmr:J07FaJjP9pEd1eDgMMMPfVBD8P42o8nw_28PIsPwHsi0pWx8ZZ4JuLMeX6SAWa6akUTQWroZOSd1WVNPM9CAlJf9OHRdoIE1kQ0tdP6k3ecECQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdefudejgecutefuodetggdotefrod
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
X-ME-Proxy: <xmx:J07FaHqmTfBkqBsh4La49tCLtAg4nKehnoTCbdsLsBkoqYpqHG7vIw>
 <xmx:J07FaJF16woWZbvF4L_hfiYmMQtDSTCzNNhYpn1JrL5C5B6d4GS6-g>
 <xmx:J07FaBldC4YfyFj_6W1EdOGZW0Od_Yy_6lBZF-dUtzm4jxqwEi_J2A>
 <xmx:J07FaEmdUbIjOu1jiZn6TSPCR0YrxhKDKPC1FEesgEbdiP1ILTmJyw>
 <xmx:J07FaHFOiKZkQ6MrW9Zt32lOOM1bEnkY2NJi8RwaDwpkElSPHZXniO-j>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 13 Sep 2025 06:57:42 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 2/2] firewire: core: use macro expression for not-registered
 state of BUS_MANAGER_ID
Date: Sat, 13 Sep 2025 19:57:37 +0900
Message-ID: <20250913105737.778038-3-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250913105737.778038-1-o-takashi@sakamocchi.jp>
References: <20250913105737.778038-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The value of BUS_MANAGER_ID register has 0x3f when no node_id
 is registered. Current implementation uses hard-coded numeric literal but
 in the case the macro expression is preferable since it is easy [...] 
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
X-Headers-End: 1uxNwz-0000pj-1p
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

The value of BUS_MANAGER_ID register has 0x3f when no node_id is
registered. Current implementation uses hard-coded numeric literal but
in the case the macro expression is preferable since it is easy to
distinguish the state from node ID mask.

This commit applies the idea.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-card.c | 12 ++++++++----
 drivers/firewire/core.h      |  3 +++
 2 files changed, 11 insertions(+), 4 deletions(-)

diff --git a/drivers/firewire/core-card.c b/drivers/firewire/core-card.c
index bf2e7f55b83e..adb90161c4c6 100644
--- a/drivers/firewire/core-card.c
+++ b/drivers/firewire/core-card.c
@@ -327,7 +327,7 @@ static void bm_work(struct work_struct *work)
 		 * next generation.
 		 */
 		__be32 data[2] = {
-			cpu_to_be32(0x3f),
+			cpu_to_be32(BUS_MANAGER_ID_NOT_REGISTERED),
 			cpu_to_be32(local_id),
 		};
 		struct fw_device *irm_device = fw_node_get_device(card->irm_node);
@@ -372,10 +372,14 @@ static void bm_work(struct work_struct *work)
 		if (rcode == RCODE_COMPLETE) {
 			int bm_id = be32_to_cpu(data[0]);
 
-			if (generation == card->generation)
-				card->bm_node_id = bm_id == 0x3f ? local_id : 0xffc0 | bm_id;
+			if (generation == card->generation) {
+				if (bm_id != BUS_MANAGER_ID_NOT_REGISTERED)
+					card->bm_node_id = 0xffc0 & bm_id;
+				else
+					card->bm_node_id = local_id;
+			}
 
-			if (bm_id != 0x3f) {
+			if (bm_id != BUS_MANAGER_ID_NOT_REGISTERED) {
 				spin_unlock_irq(&card->lock);
 
 				// Somebody else is BM.  Only act as IRM.
diff --git a/drivers/firewire/core.h b/drivers/firewire/core.h
index 79eb57fd5812..9e68ebf0673d 100644
--- a/drivers/firewire/core.h
+++ b/drivers/firewire/core.h
@@ -170,6 +170,9 @@ static inline void fw_iso_context_init_work(struct fw_iso_context *ctx, work_fun
 
 /* -topology */
 
+// The initial value of BUS_MANAGER_ID register, to express nothing registered.
+#define BUS_MANAGER_ID_NOT_REGISTERED	0x3f
+
 enum {
 	FW_NODE_CREATED,
 	FW_NODE_UPDATED,
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
