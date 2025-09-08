Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 50255B48203
	for <lists+linux1394-devel@lfdr.de>; Mon,  8 Sep 2025 03:21:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LEKxrIxq/2Xh0zcbD4a8VQpsg/Jd5JuapYKVYpuoF3o=; b=eIb1mdzB1eS0Wbg6HDzoQCPXaK
	xDn9chuV70uWdMhSR/rIzzX/c1PAtkLuqUZDOnWXusX7ZoJ6y7jFkCpWlz7/9B1IuQtbLS0/Lh/Y1
	C37DPJTQXCoGhOARFyo/4LbLCRNc/mb5jdzolUaElKJss5zQQTY1mViSeIm5MIJsG8mc=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uvQZc-0003pb-HI;
	Mon, 08 Sep 2025 01:21:36 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uvQZa-0003pI-UQ
 for linux1394-devel@lists.sourceforge.net;
 Mon, 08 Sep 2025 01:21:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0N90Rbsw2sPw8qtfBi7whVAKvBSkffqx0sYFg+fnBGA=; b=GKuNwX+HExNNtt8zxaxPz7POdy
 Nfpwanb7ECGVt4Xl2lfSjHdBOuUkPgbeJojD5JTDLK2QjeAuBE0f13Qiskpgmmtz8JnXpLjtkjphQ
 mhp0AUE3K316fvLELcAH0G1CrdPLSP/0JzvfBm7bMujeuKJN2lsknmzu3pGY/lwkxmCM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0N90Rbsw2sPw8qtfBi7whVAKvBSkffqx0sYFg+fnBGA=; b=ARtA6Cuv9d3yTo3C32/OfSEIRh
 3VJQOcIxLOV3Vy81x9tS9CEMB4YUFmMilntIT/ZPJFmL/s04ECRHx72IfS/dBXcpLHU+G2dSAaAZk
 yVMD2xxB9hr+c2nW1cutf1emvqnLXoxjIcsxeHY5irwtANQJ9dpOlbArtNLiDoZmZe6A=;
Received: from fout-a3-smtp.messagingengine.com ([103.168.172.146])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uvQZa-0001k4-Ct for linux1394-devel@lists.sourceforge.net;
 Mon, 08 Sep 2025 01:21:34 +0000
Received: from phl-compute-12.internal (phl-compute-12.internal [10.202.2.52])
 by mailfout.phl.internal (Postfix) with ESMTP id D53CFEC0093;
 Sun,  7 Sep 2025 21:21:23 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-12.internal (MEProxy); Sun, 07 Sep 2025 21:21:23 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1757294483; x=
 1757380883; bh=0N90Rbsw2sPw8qtfBi7whVAKvBSkffqx0sYFg+fnBGA=; b=Y
 MvdIEpzb3KFvEP8Urb7tXDkwlq4JaDP5cGQWHoDLdCW08oVaS3mFkwFceVah55wU
 s1QTGmLi1Qiza7vxl5D4Cmx40Wp1gOZqP4rGCaP5O/6w+AnV/O6llNOybhImIR/U
 +HsJr6mrXv6YK/MC/Odr8B8cLsKqZZUlR6OdNy0Zf1U5osEwPncI/k8593vvBmJ6
 Tg89qf1q+kR/mOuTinqjW+u/CzEeYe/DOk5bJbGbY1I0O+JjLOqedVS7RVLUOj2Z
 c8cSevT4VQBAlvU48IUb4cgoaop39NhJJTWsGlHMYtgNAHZnFoeCTl5dZ9bmRO9k
 WGXS6TIv57kQPGWIfa9GA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1757294483; x=1757380883; bh=0
 N90Rbsw2sPw8qtfBi7whVAKvBSkffqx0sYFg+fnBGA=; b=EnfghvmPediAiD8IG
 1s6PQ9Y/qePC05SIUf22/IMezFGu5BBf2nhUcPol0qU0hnAOQ/zr9sko73QKw0UD
 jTtC9WEIcrgRSZQt3gQydz194BobSHDu9LpXjjmzrM+aveTJG54x7PDlThJti+wp
 yOxVwbkiSboF/g7YqjWLvPqLiYPOvT5VMWndFuPwcdh3XZwu6SNwsr3Q/Gh46KD3
 TBHFRg4JRe7oFD/5/cOGcBd4D3vm9PWozYtUACTXJN26NLtrX6eIgfKH+pnInZUR
 FSwmFunytCvzPiSX+vytBYwS/3pnvSBt9jopxn6IpBx0koQikX0ciKpF38f5Pzlz
 DMk9w==
X-ME-Sender: <xms:ky--aKDx8xdFc87jWamkdulC7bKKwy9HWMyDgyQ8fj67HE35BqVhgQ>
 <xme:ky--aNceOsdR-DTd6nQOutajq2aOp3uDKNOPxnhuh0OF2AHX6tOMS8yo6vJgAec4Z
 GdIiVlINOQHSQAqJ-U>
X-ME-Received: <xmr:ky--aPg2QImeVzyk3G0_sXvP91mdiOIVrMaPzuJiYNoZaOH2wvCVEsbg_qCgCzYZkNRRrfuNv_i48HIkb53zbKrbEgmnQZT5TRPa8NPwjWo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdduiedvtdcutefuodetggdotefrod
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
X-ME-Proxy: <xmx:ky--aFrq7rmULkWk_Q8fM-_O8Mss2R3TtXSbozOYY2RlbM-lqrzK7g>
 <xmx:ky--aPGbEJpudtyLqHQCk_Q2TTpr7MyiqGr9jFIi0XSoBu7T88I1bg>
 <xmx:ky--aPnz1nmZ5BJvSdk2JhnBpnZ6z1bvz0QYuRW3XccmQpJvPYo4Pw>
 <xmx:ky--aKkaDsAC2IMi8l6ADUoxsWqUmp_Qo5j2WORQA-lnR5IT4TLvfA>
 <xmx:ky--aNHZNi9eef4lNplN-eOg1WStHbktw_ZfB7JIJtdsMSFJ_7G5Ye7k>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 7 Sep 2025 21:21:22 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 07/11] firewire: core: code refactoring to evaluate
 transaction result to CSR_BUS_MANAGER_ID
Date: Mon,  8 Sep 2025 10:21:04 +0900
Message-ID: <20250908012108.514698-8-o-takashi@sakamocchi.jp>
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
 Content preview: The call of bm_work should be done after acquiring spin lock
 of fw_card. For asynchronous transaction,
 the lock should be released temporarily
 due to event waiting. A commit 27310d561622 ("firewire: core: use guard macro
 to maintain properties of fw_card") applied scoped_guard() to the bm_work
 function, however it looks hard to follow to the control flow. 
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
X-Headers-End: 1uvQZa-0001k4-Ct
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

The call of bm_work should be done after acquiring spin lock of fw_card.
For asynchronous transaction, the lock should be released temporarily
due to event waiting.

A commit 27310d561622 ("firewire: core: use guard macro to maintain
properties of fw_card") applied scoped_guard() to the bm_work function,
however it looks hard to follow to the control flow.

This commit refactors the spin lock acquisition after the transaction.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-card.c | 30 ++++++++++++++++--------------
 1 file changed, 16 insertions(+), 14 deletions(-)

diff --git a/drivers/firewire/core-card.c b/drivers/firewire/core-card.c
index b98797e4f1d4..e1a7a151b109 100644
--- a/drivers/firewire/core-card.c
+++ b/drivers/firewire/core-card.c
@@ -291,7 +291,7 @@ static void bm_work(struct work_struct *work)
 	struct fw_card *card __free(card_unref) = from_work(card, work, bm_work.work);
 	struct fw_device *root_device, *irm_device;
 	struct fw_node *root_node __free(node_unref) = NULL;
-	int root_id, new_root_id, irm_id, bm_id, local_id;
+	int root_id, new_root_id, irm_id, local_id;
 	int gap_count, generation, grace;
 	bool do_reset = false;
 	bool root_device_is_running;
@@ -376,19 +376,22 @@ static void bm_work(struct work_struct *work)
 		if (rcode == RCODE_GENERATION)
 			return;
 
-		bm_id = be32_to_cpu(data[0]);
+		spin_lock_irq(&card->lock);
 
-		scoped_guard(spinlock_irq, &card->lock) {
-			if (rcode == RCODE_COMPLETE && generation == card->generation)
-				card->bm_node_id =
-				    bm_id == 0x3f ? local_id : 0xffc0 | bm_id;
-		}
+		if (rcode == RCODE_COMPLETE) {
+			int bm_id = be32_to_cpu(data[0]);
 
-		if (rcode == RCODE_COMPLETE && bm_id != 0x3f) {
-			/* Somebody else is BM.  Only act as IRM. */
-			if (local_id == irm_id)
-				allocate_broadcast_channel(card, generation);
-			return;
+			if (generation == card->generation)
+				card->bm_node_id = bm_id == 0x3f ? local_id : 0xffc0 | bm_id;
+
+			if (bm_id != 0x3f) {
+				spin_unlock_irq(&card->lock);
+
+				// Somebody else is BM.  Only act as IRM.
+				if (local_id == irm_id)
+					allocate_broadcast_channel(card, generation);
+				return;
+			}
 		}
 
 		if (rcode == RCODE_SEND_ERROR) {
@@ -397,12 +400,11 @@ static void bm_work(struct work_struct *work)
 			 * some local problem.  Let's try again later and hope
 			 * that the problem has gone away by then.
 			 */
+			spin_unlock_irq(&card->lock);
 			fw_schedule_bm_work(card, DIV_ROUND_UP(HZ, 8));
 			return;
 		}
 
-		spin_lock_irq(&card->lock);
-
 		if (rcode != RCODE_COMPLETE && !keep_this_irm) {
 			/*
 			 * The lock request failed, maybe the IRM
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
