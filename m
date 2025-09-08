Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED68B481FD
	for <lists+linux1394-devel@lfdr.de>; Mon,  8 Sep 2025 03:21:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KAW+r6/9QSXzQ+0kTmCrmjE6V2wJIzn6NL9P+8z8T/M=; b=En6uP7qz0EPMGFqU4TSdpfQ1Op
	PfbVga+gR8Tg1MzQjdevQQCgAIKdsefzMCD8UheeVeyivbkumdZ0zSkvF2+rgQKvAd/HleKgwHNLL
	VrvjNH//WCLO9JPyb0xQMR9EprusYgQAegnrtDTUuMI3nC2Kp/yj4n14XcrExlzgd80U=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uvQZV-0008BA-94;
	Mon, 08 Sep 2025 01:21:29 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uvQZT-0008Aw-05
 for linux1394-devel@lists.sourceforge.net;
 Mon, 08 Sep 2025 01:21:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=H7DOpTJkIKamZnnlkDD1SFk3tG3wPCtz+PxOLCk1rJA=; b=bIPD6gUiPGu3XPTrSBwmI+Fe7E
 UUn5ZlaBZ+PW9sWLum8ORFUpQTdaBYjzlF6oCA2mZyfOTzjlLaQxJHqKs3BUCqQ0n3X7I0mRNOvAQ
 JU81Wu0g7wE/o3AS/Ee/Zkq79JqVfDEQnsA7Aeg8oq40g/nueHj7j2e2G4dCIh1Ebau0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=H7DOpTJkIKamZnnlkDD1SFk3tG3wPCtz+PxOLCk1rJA=; b=aNPLzy9omAx0aCSEoknD/c0SWh
 QB+cKvN6Lq7/P+89gQCwbAWT1cJeuJjMxpN7/G38F22XOxzQ0+DY8w82x7Pc/kkD39Pqihl39/IvF
 yX60gr1MTBk4kyZ0B+nmiOJb4hTg3m0iRv1mRxb5orffyqdzauRci6WujZIdF4x4gqvM=;
Received: from fhigh-a2-smtp.messagingengine.com ([103.168.172.153])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uvQZS-0001im-FZ for linux1394-devel@lists.sourceforge.net;
 Mon, 08 Sep 2025 01:21:26 +0000
Received: from phl-compute-09.internal (phl-compute-09.internal [10.202.2.49])
 by mailfhigh.phl.internal (Postfix) with ESMTP id EA0301400031;
 Sun,  7 Sep 2025 21:21:20 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-09.internal (MEProxy); Sun, 07 Sep 2025 21:21:20 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1757294480; x=
 1757380880; bh=H7DOpTJkIKamZnnlkDD1SFk3tG3wPCtz+PxOLCk1rJA=; b=g
 ZJHO4D0taD6mqOFuMbyNxqUv3ayiE4OGADR1Zl79iNhuahUTtiFSn2pgX5O5+C10
 WVubXjw02/hbyh3kZihjTnqH9Jz800bpAOHyoseoM30U1ylIAI26LNnADfSCYGkh
 ece6k/pZRXkOktfexQZWXuMFDr3Etm+KXS5Tk7IBWZXSnkv/H//AjdPkzECfQ1Hf
 5mJDkHJObzA4KM32JrbA/DN9eR2g12+LM2F170MhSjwmY3e3zsiWavJi/8XaW/T0
 yOAfElZx4Vp6BFE3bCJUDpbOi910sgzBqLSfoMmKO/9aAULeV43QrORa4tCE66xf
 qu6UsjTN6qWX8XCJc752A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1757294480; x=1757380880; bh=H
 7DOpTJkIKamZnnlkDD1SFk3tG3wPCtz+PxOLCk1rJA=; b=Iscf8s9ugpTeE2bIo
 Mr+nk6pxOKJF+PshEI92Til+A5+QvU7R2t8eOQQnNp5z3GNTjXJizfpUPI+BNOBc
 vZnLdzQrXu47toE4X3b+hiLsKCYDBAfgAttZeIM7ut7RCQGBKV9OzE+5Wt5DKZMZ
 sVWPFMOoJzwAm641M4C7doggo2FiwaZbXkQyRx1Suqgd7hbBcjRkt4ywN3y9+uDQ
 0ulTG6t72FHFPC0eS6hLXNyllDK+Ynqp61lJT8Sg27Y1YvMHmnrKIBt4aCvIX7h3
 JjxoZy0s9GPDDbjA6vMFI3sFw2nC2pvesDm3h7IMewBhFhgkh0W+WYn8h998NrCK
 s3oIw==
X-ME-Sender: <xms:kC--aNudcNueJvJQ3lZkptwGmdoKoQmDBGBvcYQCv2_eDbWcyMnrBA>
 <xme:kC--aPZ1cPbOHMvPIEVU26nYNjSrAa3Ea6wlKBnEu0k_a2-d7wNPxaNn6NVKhqnsq
 L5eHTciAdDq8IMr1jo>
X-ME-Received: <xmr:kC--aCspPahR5kIwNC7zcdGImEGPWdIBbMoMj4LuFR_uVDlZ0u0NeEk7hYBrVEW6lQaw1MsPyrn-5tshj0oAf0IzkTNoDVM1Nm0M9mKcQ-0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdduiedulecutefuodetggdotefrod
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
X-ME-Proxy: <xmx:kC--aBHcP65zhaAFLALZjAeHR6Qh1Y2_YsPb1ib1leeuzIpgca35AQ>
 <xmx:kC--aNzwZeDor2aqyF0q1cuVCZ6obFK6BR45s2abmuJkhctKYRNNTA>
 <xmx:kC--aAg-Gym3NZNiXnVEyeAZk6qIu61lP_9yILCul_XGxwu54B3IBA>
 <xmx:kC--aAwdfwKwu6RQnbh1VLNvasykuU4g6OKg3QCz40i2HnyTzpkMAQ>
 <xmx:kC--aCRK_8Zs3MtUY-M7pCc5YMi5ttth149UcA8gi5-_SycUP4OcfSPl>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 7 Sep 2025 21:21:19 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 05/11] firewire: core: use cleanup function in bm_work
Date: Mon,  8 Sep 2025 10:21:02 +0900
Message-ID: <20250908012108.514698-6-o-takashi@sakamocchi.jp>
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
 Content preview:  In "bm_work" function, the references to fw_card and fw_node
 are released at last. This is achieved by using goto statements. For this
 case, the kernel cleanup framework is available. This commit uses the framework
 to remove these statements. 
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
X-Headers-End: 1uvQZS-0001im-FZ
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

In "bm_work" function, the references to fw_card and fw_node are
released at last. This is achieved by using goto statements. For this
case, the kernel cleanup framework is available.

This commit uses the framework to remove these statements.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-card.c | 33 ++++++++++++++++-----------------
 1 file changed, 16 insertions(+), 17 deletions(-)

diff --git a/drivers/firewire/core-card.c b/drivers/firewire/core-card.c
index 4a4210cda571..5bd89ddf5018 100644
--- a/drivers/firewire/core-card.c
+++ b/drivers/firewire/core-card.c
@@ -280,14 +280,17 @@ void fw_schedule_bm_work(struct fw_card *card, unsigned long delay)
 		fw_card_put(card);
 }
 
+DEFINE_FREE(node_unref, struct fw_node *, if (_T) fw_node_put(_T))
+DEFINE_FREE(card_unref, struct fw_card *, if (_T) fw_card_put(_T))
+
 static void bm_work(struct work_struct *work)
 {
 	static const char gap_count_table[] = {
 		63, 5, 7, 8, 10, 13, 16, 18, 21, 24, 26, 29, 32, 35, 37, 40
 	};
-	struct fw_card *card = from_work(card, work, bm_work.work);
+	struct fw_card *card __free(card_unref) = from_work(card, work, bm_work.work);
 	struct fw_device *root_device, *irm_device;
-	struct fw_node *root_node;
+	struct fw_node *root_node __free(node_unref) = NULL;
 	int root_id, new_root_id, irm_id, bm_id, local_id;
 	int gap_count, generation, grace, rcode;
 	bool do_reset = false;
@@ -297,11 +300,13 @@ static void bm_work(struct work_struct *work)
 	bool keep_this_irm;
 	__be32 transaction_data[2];
 
+	lockdep_assert_held(&card->lock);
+
 	spin_lock_irq(&card->lock);
 
 	if (card->local_node == NULL) {
 		spin_unlock_irq(&card->lock);
-		goto out_put_card;
+		return;
 	}
 
 	generation = card->generation;
@@ -366,9 +371,9 @@ static void bm_work(struct work_struct *work)
 				CSR_REGISTER_BASE + CSR_BUS_MANAGER_ID,
 				transaction_data, 8);
 
+		// Another bus reset, BM work has been rescheduled.
 		if (rcode == RCODE_GENERATION)
-			/* Another bus reset, BM work has been rescheduled. */
-			goto out;
+			return;
 
 		bm_id = be32_to_cpu(transaction_data[0]);
 
@@ -382,8 +387,7 @@ static void bm_work(struct work_struct *work)
 			/* Somebody else is BM.  Only act as IRM. */
 			if (local_id == irm_id)
 				allocate_broadcast_channel(card, generation);
-
-			goto out;
+			return;
 		}
 
 		if (rcode == RCODE_SEND_ERROR) {
@@ -393,7 +397,7 @@ static void bm_work(struct work_struct *work)
 			 * that the problem has gone away by then.
 			 */
 			fw_schedule_bm_work(card, DIV_ROUND_UP(HZ, 8));
-			goto out;
+			return;
 		}
 
 		spin_lock_irq(&card->lock);
@@ -417,7 +421,7 @@ static void bm_work(struct work_struct *work)
 		 */
 		spin_unlock_irq(&card->lock);
 		fw_schedule_bm_work(card, DIV_ROUND_UP(HZ, 8));
-		goto out;
+		return;
 	}
 
 	/*
@@ -455,7 +459,7 @@ static void bm_work(struct work_struct *work)
 		 * and let's try again once that's done.
 		 */
 		spin_unlock_irq(&card->lock);
-		goto out;
+		return;
 	} else if (root_device_is_cmc) {
 		/*
 		 * We will send out a force root packet for this
@@ -512,7 +516,7 @@ static void bm_work(struct work_struct *work)
 		 */
 		reset_bus(card, card->gap_count != 0);
 		/* Will allocate broadcast channel after the reset. */
-		goto out;
+		return;
 	}
 
 	if (root_device_is_cmc) {
@@ -525,16 +529,11 @@ static void bm_work(struct work_struct *work)
 				CSR_REGISTER_BASE + CSR_STATE_SET,
 				transaction_data, 4);
 		if (rcode == RCODE_GENERATION)
-			goto out;
+			return;
 	}
 
 	if (local_id == irm_id)
 		allocate_broadcast_channel(card, generation);
-
- out:
-	fw_node_put(root_node);
- out_put_card:
-	fw_card_put(card);
 }
 
 void fw_card_initialize(struct fw_card *card,
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
