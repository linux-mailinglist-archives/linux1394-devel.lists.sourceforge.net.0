Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A52B48201
	for <lists+linux1394-devel@lfdr.de>; Mon,  8 Sep 2025 03:21:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=R/HQpaVGyTgUxA49dzPCQOER/MySmRV+uNHLez4xcHU=; b=CLrj7F1DXXjhIB+LvsaLW+Qsbm
	XczcNBwEWQId56h5uZh07dEBNlsuxs46tjg2RtesNCb+fQy2XwR7C83K4CoZiWPnCwG+CWPxy79JA
	/zHWAlYCH+jrNGDSdPGuEDByLEPSiYRMWUpFgkkVAIJvQCHYNsLzC7zxfNODpGS3jUyA=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uvQZZ-0008Bu-V3;
	Mon, 08 Sep 2025 01:21:33 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uvQZX-0008BU-FC
 for linux1394-devel@lists.sourceforge.net;
 Mon, 08 Sep 2025 01:21:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mSnUVpxCiJr1+TG9UdtbcF0qEHQfcBsU1XskFAkRnUI=; b=ay1GbN6syv5YtxSXzlVBA8R32K
 Bs8o5FsS94ZxuWjQ28J13b3AD8sCuo/8qxCfxqbR8uR1oHk9F6oDxOx5ahLh029La0NKn/3sSCH38
 3pp+ohV2H2BH7sXr1LIJfdEk7rJKVzVYUMJmy9wyNgZL2VVoM4L0BkiMJB6b4HnkFLzk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mSnUVpxCiJr1+TG9UdtbcF0qEHQfcBsU1XskFAkRnUI=; b=BezzFssmMHc5C3MXytEpVMR27z
 +be6RVm1sk6tYhhnFLlFBz/dUy8Jm4B0ab1S9zwzde/z4tJ6ZPcGOfWf75zElUXOMguuKvcB8pC3G
 c/ZKZJQKVb4vZIqIJZUEI+1I2v5Wq7B2vIc3aYivRpxnd3X2VqVpzrSr/7/ZGX5kEqzk=;
Received: from fout-a3-smtp.messagingengine.com ([103.168.172.146])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uvQZW-0001jS-P5 for linux1394-devel@lists.sourceforge.net;
 Mon, 08 Sep 2025 01:21:31 +0000
Received: from phl-compute-12.internal (phl-compute-12.internal [10.202.2.52])
 by mailfout.phl.internal (Postfix) with ESMTP id 3D752EC003B;
 Sun,  7 Sep 2025 21:21:25 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-12.internal (MEProxy); Sun, 07 Sep 2025 21:21:25 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1757294485; x=
 1757380885; bh=mSnUVpxCiJr1+TG9UdtbcF0qEHQfcBsU1XskFAkRnUI=; b=O
 gQPv7Axo6GC5o+5fd6uXfDkTbODAwvx2Juq2+WctbytnEsN9ULYnoLNER6Qjld0k
 MVU76TGmKfSiu17hl+Ogh4CV/IaOdLIKjoDB9V/iC4uODJV3er+WzbCZZJ97p58l
 1vX05D86G9ioIfWuOow/wKN+B/Pt3P8uOxRPkx+eB1jLmOxl90J0wE/dn7n732tm
 2nRlOhKr1dli333m9GKrz6wUyZrmaDoXe4HKPvgf2S9dAZ3+s4qOInSuuKh9xApk
 c9AvhqK0/fGeQoTP7/W/yktNp1KzewyoghLhe85bywKfRdW9rUxmdKnC5ITFK/w1
 YlHF3KUpQNQC3O5wX4NjA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1757294485; x=1757380885; bh=m
 SnUVpxCiJr1+TG9UdtbcF0qEHQfcBsU1XskFAkRnUI=; b=hOfliCo+TS2DbMB1N
 fYjbtoVbwSmv1HcJBKEN59B/7Wy8Ywm2ADJ9d5cWxIJy60MKGo4tQ/RidELTry1t
 D4oIhGEB0qa01Q9GdbHEBXCezCbaWdpDljvi9ASzHlcqjXfpEs1AQwLLUh50kqo7
 EgdoZO87lQYuLDnDeVBe/bvvTRkoUgsJ9pBCjsHXeeHpW9z+Hj2ld96CZFpzziT5
 8ob3G/Za9i3jiXcsKCaAupUFEAi1iGV45JZKppFpT4HCIXPZtbQueKBBqnKZrl1d
 dvOkx5IfWpFsdX7SlUBwJ5g2VVl4e9GPHwc1n/WPJbZq4X0lRBxYSRRfV5NB8i4f
 BYVMA==
X-ME-Sender: <xms:lS--aBR4AbKfTwsJM22jZgl0zQuyAn9T3lSF5rajplEZpGK9S1ETlQ>
 <xme:lS--aDuWuBDBR8bVlgjciRZSYF8CsPrqRDG6uV_qkq5hTiNXAuAZBl6eACrg7yAj_
 GSNovknmVKEN81it6g>
X-ME-Received: <xmr:lS--aIzkjDt60Oq5PzinwdEledmOu5Q1x5ctYcONIvbyAQM3_0-TxybDDgCARiu9uTOip8fMFKdbanRzff5HG7jD8mYzpeV2lRgCIrPCCwU>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdduiedvtdcutefuodetggdotefrod
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
X-ME-Proxy: <xmx:lS--aF7K9-SC3t5B7UzS9QFZg-9lXjOGPdtR6JN1C-Xt8vJLOHSiNg>
 <xmx:lS--aKWVy-GSbCVh03VZTQKKzv_K6pT4BC2hHSNppRSlDp-bSbAA3Q>
 <xmx:lS--aJ39ukpsuEwR4sE_sN7eCVVfv_vAueRzpqnT7hTT9ZHMLlOi-g>
 <xmx:lS--aH2N_6ysL4KDmvvUl2tQfT29SevFpvOAJeXrIOXR-H2q8u-DxQ>
 <xmx:lS--aOVSR3bTmS2Z6JNN4ff8VLfOnhdi7LGZDIZG9hXc71hjZ5kBSHsH>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 7 Sep 2025 21:21:24 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 08/11] firewire: core: refer fw_card member to initiate bus
 reset under acquiring lock
Date: Mon,  8 Sep 2025 10:21:05 +0900
Message-ID: <20250908012108.514698-9-o-takashi@sakamocchi.jp>
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
 Content preview:  The gap_count member of fw_card structure is referred when
 initiate bus reset. This reference is done out of acquiring lock. This is
 not good. This commit takes the reference within the acquiring lock, with
 additional code refactoring. 
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
X-Headers-End: 1uvQZW-0001jS-P5
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

The gap_count member of fw_card structure is referred when initiate bus
reset. This reference is done out of acquiring lock. This is not good.

This commit takes the reference within the acquiring lock, with
additional code refactoring.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-card.c | 52 ++++++++++++++++++------------------
 1 file changed, 26 insertions(+), 26 deletions(-)

diff --git a/drivers/firewire/core-card.c b/drivers/firewire/core-card.c
index e1a7a151b109..630e229c9cc2 100644
--- a/drivers/firewire/core-card.c
+++ b/drivers/firewire/core-card.c
@@ -292,7 +292,7 @@ static void bm_work(struct work_struct *work)
 	struct fw_device *root_device, *irm_device;
 	struct fw_node *root_node __free(node_unref) = NULL;
 	int root_id, new_root_id, irm_id, local_id;
-	int gap_count, generation, grace;
+	int expected_gap_count, generation, grace;
 	bool do_reset = false;
 	bool root_device_is_running;
 	bool root_device_is_cmc;
@@ -485,9 +485,9 @@ static void bm_work(struct work_struct *work)
 	 */
 	if (!card->beta_repeaters_present &&
 	    root_node->max_hops < ARRAY_SIZE(gap_count_table))
-		gap_count = gap_count_table[root_node->max_hops];
+		expected_gap_count = gap_count_table[root_node->max_hops];
 	else
-		gap_count = 63;
+		expected_gap_count = 63;
 
 	/*
 	 * Finally, figure out if we should do a reset or not.  If we have
@@ -495,16 +495,17 @@ static void bm_work(struct work_struct *work)
 	 * have either a new root or a new gap count setting, let's do it.
 	 */
 
-	if (card->bm_retries++ < 5 &&
-	    (card->gap_count != gap_count || new_root_id != root_id))
+	if (card->bm_retries++ < 5 && (card->gap_count != expected_gap_count || new_root_id != root_id))
 		do_reset = true;
 
-	spin_unlock_irq(&card->lock);
-
 	if (do_reset) {
+		int card_gap_count = card->gap_count;
+
+		spin_unlock_irq(&card->lock);
+
 		fw_notice(card, "phy config: new root=%x, gap_count=%d\n",
-			  new_root_id, gap_count);
-		fw_send_phy_config(card, new_root_id, generation, gap_count);
+			  new_root_id, expected_gap_count);
+		fw_send_phy_config(card, new_root_id, generation, expected_gap_count);
 		/*
 		 * Where possible, use a short bus reset to minimize
 		 * disruption to isochronous transfers. But in the event
@@ -517,26 +518,25 @@ static void bm_work(struct work_struct *work)
 		 * may treat it as two, causing a gap count inconsistency
 		 * again. Using a long bus reset prevents this.
 		 */
-		reset_bus(card, card->gap_count != 0);
+		reset_bus(card, card_gap_count != 0);
 		/* Will allocate broadcast channel after the reset. */
-		return;
-	}
+	} else {
+		spin_unlock_irq(&card->lock);
 
-	if (root_device_is_cmc) {
-		/*
-		 * Make sure that the cycle master sends cycle start packets.
-		 */
-		__be32 data = cpu_to_be32(CSR_STATE_BIT_CMSTR);
-		int rcode = fw_run_transaction(card, TCODE_WRITE_QUADLET_REQUEST,
-				root_id, generation, SCODE_100,
-				CSR_REGISTER_BASE + CSR_STATE_SET,
-				&data, sizeof(data));
-		if (rcode == RCODE_GENERATION)
-			return;
-	}
+		if (root_device_is_cmc) {
+			// Make sure that the cycle master sends cycle start packets.
+			__be32 data = cpu_to_be32(CSR_STATE_BIT_CMSTR);
+			int rcode = fw_run_transaction(card, TCODE_WRITE_QUADLET_REQUEST,
+					root_id, generation, SCODE_100,
+					CSR_REGISTER_BASE + CSR_STATE_SET,
+					&data, sizeof(data));
+			if (rcode == RCODE_GENERATION)
+				return;
+		}
 
-	if (local_id == irm_id)
-		allocate_broadcast_channel(card, generation);
+		if (local_id == irm_id)
+			allocate_broadcast_channel(card, generation);
+	}
 }
 
 void fw_card_initialize(struct fw_card *card,
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
