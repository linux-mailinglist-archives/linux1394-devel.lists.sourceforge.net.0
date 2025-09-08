Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 74145B48206
	for <lists+linux1394-devel@lfdr.de>; Mon,  8 Sep 2025 03:21:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KTJcpKyAM6GjGEjdfQvoc4qONCKr05YhbeaJk/yu6Jg=; b=cJmWkU12zVPizNzbE3AiGd+sS8
	rwbE3r1mGwDsbhY9VfgqHvtvXPi3ohS6QJ2YNAJSCyis5G0oWfBKqidJi/JnX/SIsUjDld1681hEq
	ncNUNrRjoYqY28l+Bw/OiwGpLrtrvtY9zcpmkzcvVPufZ0ipgsoseqrJopGSMPfpKj8w=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uvQZe-0008Cj-7i;
	Mon, 08 Sep 2025 01:21:38 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uvQZd-0008CX-Kd
 for linux1394-devel@lists.sourceforge.net;
 Mon, 08 Sep 2025 01:21:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=i2fSL7FZl4IrRcqRg9Av1sKqTFCfIV6J8l4HksJ8U3I=; b=UkywP+yn/DFvjgYJVSdjsihhhj
 b8elFhMTz7809o1kxasP4x/TN6Mkpwwf+LK59xZxTMMU4hyBvXQAmm7jNjMht+dTsKenVduGQ9ZeK
 4ieUjKuIojGxAAAyKzWuMg6q4PnyFwBMzPtawtsU+szovSw/wlkBPuULVmKoE9zxCeYU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=i2fSL7FZl4IrRcqRg9Av1sKqTFCfIV6J8l4HksJ8U3I=; b=f6u2yZEVaSu56m8TjStVw7ZKuN
 vU1GRNOt0YRJESab5D+NPU9mogV0kxeEEqxeM1FL6I9oi0HFtJnuSG+dTLd4mTCUyVBmY/HlmXQ/X
 bwCm+EE3RaHGHTTEuvZXZjtXSPD+eyAWuKjPwW+h/d/OzObiUFFWkVA4ZXTsC10cqLdU=;
Received: from fhigh-a2-smtp.messagingengine.com ([103.168.172.153])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uvQZd-0001kO-3z for linux1394-devel@lists.sourceforge.net;
 Mon, 08 Sep 2025 01:21:37 +0000
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 919CC140002E;
 Sun,  7 Sep 2025 21:21:26 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-04.internal (MEProxy); Sun, 07 Sep 2025 21:21:26 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1757294486; x=
 1757380886; bh=i2fSL7FZl4IrRcqRg9Av1sKqTFCfIV6J8l4HksJ8U3I=; b=m
 7B31nOYiGpUueddbEtaTbBFbav6qNI4LO8rTRAPctjaBOruSjKdb6Uch0oSoxDuA
 qSV/QhqA73b5IOxp8cdER7mYZFcm7bGMxkUNSX25nhwtaQjG+cbm+d7UyntpU123
 rC2ML1WVeIZVgCC4ln/COqb3KwJUijHEFFvBCQ3F2bk3UN7AC62STbzwFG0Bv+l3
 o1NfpQTZU80MG3vk63J36WUQGc0Lyw5gFymgIUYH95DS8zS+8WPCtebkXvsGFHNH
 ET48Gx45AzgIggf8QN88iHEMT4/s/GClxEDbX9qOAvPJZEI31gOCzS70Ls877Ru1
 trvDiAzlN25QiSYkh2Kew==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1757294486; x=1757380886; bh=i
 2fSL7FZl4IrRcqRg9Av1sKqTFCfIV6J8l4HksJ8U3I=; b=ckb0ObfG0jxnwcpAO
 17wFfCOoKMKMpM5kPaPo9RTNs4FVDdh/Ppf1LEXxgq12t16yMaN1m63w3QcPLisB
 55/hGWvRZrgUFkw6avSQ1F1FXFzJ8I0s5ozcK5MadU4p0Ef7rx6FcNeS7a2eSiZL
 N+dGvX91GjgAVyQUSDsM1jaW/fY+dbfJcD1lafhOh7M+gWec4GC9l/ZGQJBLc3uG
 g55h8yhk3uKFiL8MAapyJ5Fdi8wICsDUNHlmrbTVdHCB15AKPG3homDB2IxXcGl5
 zgPAt4pOApT9NoUK6mwLiEJ//YxKFKA+egDWbKGCdooZCoHF00D8LQaf1Y96H9UD
 ovzdA==
X-ME-Sender: <xms:li--aFh5edcEcl6J1FxQgdM86cbH1TFahKDqa7HV2MLbyL0DYgcq4Q>
 <xme:li--aC84pPjRg-M5Mi8JiX5wINrQDIgqZYsejUvtLr-Zp7AvNjk_T5lIgHNqfLLA-
 YUXYP30NQW_vs2hmEs>
X-ME-Received: <xmr:li--aHARUpNPcclhXjREc7XEy-p1yJ3bRwiOpmZY-i6_VHtZ6CqWvw6bqGx-f8cXk_2_6NPhmCZhjYQDOgp67sA7nEaIIfAgS7-vS8_dcb8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdduiedulecutefuodetggdotefrod
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
X-ME-Proxy: <xmx:li--aHK_cISkLtKfONbd3lA5uIrgiyThLY2XhexF9usqneCLKJjZZQ>
 <xmx:li--aCnn67ptyjNSr6BuhZQfCeCmC2R7MMqgcK_EZ2gw13g-UILLeg>
 <xmx:li--aNFKamR1UqzcZMF0w4xug0gGF9B3l5GC1ykb8fCRKj4GjOl6ng>
 <xmx:li--aKEk8F-q3UJ4bh5CPoI661EqN_UHJ05m2uEnO91oqFt0_55uRA>
 <xmx:li--aEnZu1iGT5mgKDNO12By4lvUe4izyruc1Q34hmRi6RYg8QwAc07X>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 7 Sep 2025 21:21:25 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 09/11] firewire: core: code refactoring to detect both IEEE
 1394:1995 IRM and Canon MV5i
Date: Mon,  8 Sep 2025 10:21:06 +0900
Message-ID: <20250908012108.514698-10-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250908012108.514698-1-o-takashi@sakamocchi.jp>
References: <20250908012108.514698-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The detection of IEEE 1394:1995 and Canon MV5i is just
 required within some of the condition branches. In this case,
 these check can be capsulated
 within these branches. This commit refactors the checks. 
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
X-Headers-End: 1uvQZd-0001kO-3z
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

The detection of IEEE 1394:1995 and Canon MV5i is just required within
some of the condition branches. In this case, these check can be
capsulated within these branches.

This commit refactors the checks.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-card.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/firewire/core-card.c b/drivers/firewire/core-card.c
index 630e229c9cc2..99aa98f195ba 100644
--- a/drivers/firewire/core-card.c
+++ b/drivers/firewire/core-card.c
@@ -289,15 +289,13 @@ static void bm_work(struct work_struct *work)
 		63, 5, 7, 8, 10, 13, 16, 18, 21, 24, 26, 29, 32, 35, 37, 40
 	};
 	struct fw_card *card __free(card_unref) = from_work(card, work, bm_work.work);
-	struct fw_device *root_device, *irm_device;
+	struct fw_device *root_device;
 	struct fw_node *root_node __free(node_unref) = NULL;
 	int root_id, new_root_id, irm_id, local_id;
 	int expected_gap_count, generation, grace;
 	bool do_reset = false;
 	bool root_device_is_running;
 	bool root_device_is_cmc;
-	bool irm_is_1394_1995_only;
-	bool keep_this_irm;
 
 	lockdep_assert_held(&card->lock);
 
@@ -316,14 +314,6 @@ static void bm_work(struct work_struct *work)
 			atomic_read(&root_device->state) == FW_DEVICE_RUNNING;
 	root_device_is_cmc = root_device && root_device->cmc;
 
-	irm_device = fw_node_get_device(card->irm_node);
-	irm_is_1394_1995_only = irm_device && irm_device->config_rom &&
-			(irm_device->config_rom[2] & 0x000000f0) == 0;
-
-	/* Canon MV5i works unreliably if it is not root node. */
-	keep_this_irm = irm_device && irm_device->config_rom &&
-			irm_device->config_rom[3] >> 8 == CANON_OUI;
-
 	root_id  = root_node->node_id;
 	irm_id   = card->irm_node->node_id;
 	local_id = card->local_node->node_id;
@@ -349,6 +339,9 @@ static void bm_work(struct work_struct *work)
 			cpu_to_be32(0x3f),
 			cpu_to_be32(local_id),
 		};
+		struct fw_device *irm_device = fw_node_get_device(card->irm_node);
+		bool irm_is_1394_1995_only = false;
+		bool keep_this_irm = false;
 		int rcode;
 
 		if (!card->irm_node->link_on) {
@@ -358,6 +351,13 @@ static void bm_work(struct work_struct *work)
 			goto pick_me;
 		}
 
+		if (irm_device && irm_device->config_rom) {
+			irm_is_1394_1995_only = (irm_device->config_rom[2] & 0x000000f0) == 0;
+
+			// Canon MV5i works unreliably if it is not root node.
+			keep_this_irm = irm_device->config_rom[3] >> 8 == CANON_OUI;
+		}
+
 		if (irm_is_1394_1995_only && !keep_this_irm) {
 			new_root_id = local_id;
 			fw_notice(card, "%s, making local node (%02x) root\n",
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
