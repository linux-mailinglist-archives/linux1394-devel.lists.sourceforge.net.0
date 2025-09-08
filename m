Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 39850B48204
	for <lists+linux1394-devel@lfdr.de>; Mon,  8 Sep 2025 03:21:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+nrqNj/6snL2k5JlzPKWgak7wxqnmMNf/up33Wnvv88=; b=FgOSKRiS0r1eVLVc5D0hf1/wV2
	5+PPxDoqGpXCMdL520+P2+fCVBuUmh039PRbSiO/893KIPocfpWBNE8oBMMkSkv+HaqhhCe+hmpEe
	FAdCzgv6m0xwQkamX3ASvOZQqOWQnBLIHI0XKRexkl7+qkyrCtbOB7+6trbXwiQgs7c4=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uvQZc-0003yo-5w;
	Mon, 08 Sep 2025 01:21:36 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uvQZa-0003yQ-GJ
 for linux1394-devel@lists.sourceforge.net;
 Mon, 08 Sep 2025 01:21:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tDcax/H5j3jJmh1j7DVnANT3twhs5JmjfUedN9rNnbE=; b=kLitK9TJn2IhRVG4LwYz7XPTY+
 FdSXHj+3k4dNm9/M3wIs+Zc+kGw+TYCJWfvqsPVRFjcJEFtuNgm8fqAVT+KgYDchfSqSGoRZP0NeR
 +Vluf1SmRV4ruNGneNIul2PFHkNGzSR0Q+Tm3FxNrLd0u4mkmnpAL+bm1LIWR/tqeADc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tDcax/H5j3jJmh1j7DVnANT3twhs5JmjfUedN9rNnbE=; b=UjoFnk27J9StD+Xdl4IQ1Xu7H9
 08FXUCYd2Ao3Q9sdWr7zHJoHnxaRfJfex9ojKr27c+8HP2xEkcGVUdunVw5n/5EElIFxsAwssiJif
 DG39XsbfQgIMoFgr8L0d/ASyl08xA53F/AQXuWTnYID8THLZfe3v80vKOuFhIuAIT+pQ=;
Received: from fout-a3-smtp.messagingengine.com ([103.168.172.146])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uvQZa-0001k9-QI for linux1394-devel@lists.sourceforge.net;
 Mon, 08 Sep 2025 01:21:35 +0000
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
 by mailfout.phl.internal (Postfix) with ESMTP id 46959EC004E;
 Sun,  7 Sep 2025 21:21:29 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-04.internal (MEProxy); Sun, 07 Sep 2025 21:21:29 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1757294489; x=
 1757380889; bh=tDcax/H5j3jJmh1j7DVnANT3twhs5JmjfUedN9rNnbE=; b=F
 b/14rQtFpCxKN91ZDbhRnW6H4tGR2/oHlbjoiCYvM06Tqpa/O0fvkrHSOcKW+EJL
 a6FhylUvzzTklWx1kW5+nl+14sP7r4xvty6tXfY3II8EK2lSTAxAoqcWpF9DsDJt
 1zClwHMd3lAxEXCASIvJ7wwiKh9PraEVCp+lD24N6QW56l9/lW+/C4O9tMaZyqYj
 K3Kbsd8ocPlAY6cYZALzOPAj2hcWLZxjnyN9m/o1oMpWI2Rc/KNLnv5ZzZpPu6y6
 gLUs0c/+z377tpYMfpg+CZ44Z/uz650TLa316iC4aU4R57no7bgC98j3JYZ/1P03
 jQ7PJhDKQmLQjOvvMiTsg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1757294489; x=1757380889; bh=t
 Dcax/H5j3jJmh1j7DVnANT3twhs5JmjfUedN9rNnbE=; b=f/KFz+JVF6X8XZDYm
 UFcLLfu/c+X2LPenQUM+/fbA2mvB8J/sd+zr6yxJHUbRoNP3NIL0bi5Hggsncv9R
 vkqr7KComwyk318ugz0qoJDFPGVW/O3MG1naX55b5cEmUufP37vuzTW93ZoN9PrE
 GHLR6bePEznp8qp9iwLSZYvr4ivqezxnI0P4YQ8W3MnRNToj8MlrDHQ5shmn1z1d
 tJeNIIOZhnNdm2jWzWKH1vO3q82lxLtGRbd33Sz9y3e1Cftkz065bkGlPC7VWE+B
 fyNEk9emF0h0k5TJXsEGfUjzG3d1puldSSy8UKo/QUY2P5fXYpG90fCDgPa7a9OD
 cRn2g==
X-ME-Sender: <xms:mS--aJ42iuuTvMP0mVQr_bV3SG5sXWV19Fq1MKvSifzSyyfz8CkCZA>
 <xme:mS--aP2yWb5_2Yhre5bHVE701Pg2uyFp3tRzicQ0z5oWP3-PaeOCkSc5rGZYMHVw7
 xcuNRCwb6EtKunZZi8>
X-ME-Received: <xmr:mS--aCZv1KecHYXHxp38sek_WaO3jvzBHFn8c5I7x8bfOyB2-25-w5R8x4vXPzEsP1BjWC9A6Vbwlh22tPjYRfq5L6jIwSA0VB7WlSbuDWM>
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
X-ME-Proxy: <xmx:mS--aPAp7Jdd-O1VCWz2Pxvyzd0dPjh88xsdkkZ48OtGe2M64PItGA>
 <xmx:mS--aM9yTVjKued0NiHhC_uClcS6KLxy_iN7iIcRvfJcJUdM3ojqcw>
 <xmx:mS--aH_kcbuKbhFn38uvsdnplPOnx0T8g8F0gwUJMeUSLk2QY9Vkbg>
 <xmx:mS--aLfnptIzRzPoVPeMuSFMGmYR4BP5a5XDcwwzRH0RCUscwDm3LQ>
 <xmx:mS--aD-ByMyeYoKilfkSud2GpMFo5bI2ghiAV8eyu2M1X7eF67-zV5Un>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 7 Sep 2025 21:21:28 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 11/11] firewire: core: code refactoring whether root node is
 cycle master capable
Date: Mon,  8 Sep 2025 10:21:08 +0900
Message-ID: <20250908012108.514698-12-o-takashi@sakamocchi.jp>
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
 Content preview: The check of cycle master capability in root node is
 currently
 just in a condition branch. In this case, the required variable should be
 within the branch. This commit is just for the purpose. Signed-off-by: Takashi
 Sakamoto <o-takashi@sakamocchi.jp> --- drivers/firewire/core-card.c | 8
 +++----- 1 file changed, 3 insertions(+), 5 deletions(-) 
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
X-Headers-End: 1uvQZa-0001k9-QI
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

The check of cycle master capability in root node is currently just in a
condition branch. In this case, the required variable should be within the
branch.

This commit is just for the purpose.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-card.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/firewire/core-card.c b/drivers/firewire/core-card.c
index b430a70a7eeb..474d8066e090 100644
--- a/drivers/firewire/core-card.c
+++ b/drivers/firewire/core-card.c
@@ -289,12 +289,10 @@ static void bm_work(struct work_struct *work)
 		63, 5, 7, 8, 10, 13, 16, 18, 21, 24, 26, 29, 32, 35, 37, 40
 	};
 	struct fw_card *card __free(card_unref) = from_work(card, work, bm_work.work);
-	struct fw_device *root_device;
 	struct fw_node *root_node __free(node_unref) = NULL;
 	int root_id, new_root_id, irm_id, local_id;
 	int expected_gap_count, generation, grace;
 	bool do_reset = false;
-	bool root_device_is_cmc;
 
 	lockdep_assert_held(&card->lock);
 
@@ -308,8 +306,6 @@ static void bm_work(struct work_struct *work)
 	generation = card->generation;
 
 	root_node = fw_node_get(card->root_node);
-	root_device = fw_node_get_device(root_node);
-	root_device_is_cmc = root_device && root_device->cmc;
 
 	root_id  = root_node->node_id;
 	irm_id   = card->irm_node->node_id;
@@ -519,9 +515,11 @@ static void bm_work(struct work_struct *work)
 		reset_bus(card, card_gap_count != 0);
 		/* Will allocate broadcast channel after the reset. */
 	} else {
+		struct fw_device *root_device = fw_node_get_device(root_node);
+
 		spin_unlock_irq(&card->lock);
 
-		if (root_device_is_cmc) {
+		if (root_device && root_device->cmc) {
 			// Make sure that the cycle master sends cycle start packets.
 			__be32 data = cpu_to_be32(CSR_STATE_BIT_CMSTR);
 			int rcode = fw_run_transaction(card, TCODE_WRITE_QUADLET_REQUEST,
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
