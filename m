Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 44B59B876E8
	for <lists+linux1394-devel@lfdr.de>; Fri, 19 Sep 2025 01:55:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S18LFI0VYbEkvB6wHOvFxKIZoVa3UfKCBRSxydJFVRI=; b=IB0MiI3ldRqY//wLUcWilLr5fl
	2Qbvxipda9ZPmS9iLPqNm9fijHghSdGaQ1K/vv1wEigAYU6WK1+vYGCrN6QeKCO2AzywiJwsZo0wP
	RoReLkylaD3hg8Sn1HJcd5r/7m6g8C1L1c4cLX+BY4G5YbV0kAE7esZEx14yal0pWOAQ=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uzOT4-0000UQ-3d;
	Thu, 18 Sep 2025 23:55:14 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uzOT2-0000UF-Hs
 for linux1394-devel@lists.sourceforge.net;
 Thu, 18 Sep 2025 23:55:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xzYwZqfvPW6KOoTt5TjmQYlp4Q4mwY00/jLyNK2kg1E=; b=RtUG+qBjwirJvr+v/Ib59cB0zz
 Then0fj3XgcRt7uIJWsQjd0b7SdP4gZ9L19H1ZS6/FY4G2J1Y6JLmdseYMfigmJ7/hbU7jeaU5wwR
 MfY7Eee9hFNPLJqnpM5D9PU45BAn8wSJSdm32SkmiHFzqjPZxPOEIJrw6ZYgCgw/LlAc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xzYwZqfvPW6KOoTt5TjmQYlp4Q4mwY00/jLyNK2kg1E=; b=eRsiqzKSvI7n6RRPktMk2+oaZn
 19YMuhOQ6gWnbF4TUUnxuNip0cXoxGEm2a26bYeGzF7/ZSfDzBeC8a8cnMwF/C2VVLXAnjLkysnWz
 iffE5Z2hULDQoubsnfoTJ16AimgYeSoQqPUycDkEv2P4WbAuEc7P2p0sNuzDVM5FqRNs=;
Received: from fhigh-b2-smtp.messagingengine.com ([202.12.124.153])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uzOT2-0003Sd-3f for linux1394-devel@lists.sourceforge.net;
 Thu, 18 Sep 2025 23:55:12 +0000
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
 by mailfhigh.stl.internal (Postfix) with ESMTP id 96D997A02DF;
 Thu, 18 Sep 2025 19:55:01 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-06.internal (MEProxy); Thu, 18 Sep 2025 19:55:01 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1758239701; x=
 1758326101; bh=xzYwZqfvPW6KOoTt5TjmQYlp4Q4mwY00/jLyNK2kg1E=; b=k
 B3PAg9qsv6oNBrBk+UkeJv18rGi1MwzulVq9eQVeGb/yjm72NDVV/kn86qs09Sbt
 tP5LY8iEVEBCa8hdsrTVk7phpuhh4g2zt6suBkJvWAfzNQ9WvGH/wrXiwSHm+Qpw
 TbV5x8y8c44E0y7+UDqXYnUp0pR8ubqrikEJYPI7fHYCLOhXk4zv0HYvGagZ2zT4
 GYK+JT1ksZrkPmZDNibObQr19/GkNoN3fcaFCLdHXD4vAiUlkrhL4eKY533/o2Qo
 tLyNb5MJ5dvdyeKhrKNagb8AmzizJe73aQJBt+i/GbAxzkk8GRPfuiolLss/ij+S
 EURCvhlPX6RbHbv/ILHRw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1758239701; x=1758326101; bh=x
 zYwZqfvPW6KOoTt5TjmQYlp4Q4mwY00/jLyNK2kg1E=; b=PmSWAcG2BqkDxrtKL
 oIUplyKeBbFVNH+Y3CFCW3GBLERXYu8hK4Lg+fkaR3mzM6VJdH7Dat/8s20CDx3V
 fHN2p2IDsRvsQnIGDtR26ujjxa3cV9B0FOoyTd5tkONf/ZpaqRR7KB+jzVi/iFZe
 bKcBL06/Zsn79uF5cjHv6Z4hSGO5iSsxYIqlyhU8brgWes/fCM1gD9pkIH/YtkHG
 hq64ClGoLxh/akk0Ur2HnrKi8iK9DqWxYcZz1Mf44XiZ84T8WJMIBavh9FwyI6xC
 tn54H1cUTa6xwJrQk1QJXq7HSMl/1gp65+PcVqXmpKstyZmk3sZliQmU1vK4g0jw
 R7YBQ==
X-ME-Sender: <xms:1ZvMaJBDXmhlO1GueoBayFyDvGPSifRWrOAY9du3hvLt1dymny4zTg>
 <xme:1ZvMaAeiXDPFB_--A-UoyY4mRtwelsst38mjbgDfawTEpa7d_WxAfKJlyGepJZaab
 ZQoSDs_qkiubMtL5-Q>
X-ME-Received: <xmr:1ZvMaGgyDyZNOFqyF02yRXbt5qkOlGKDgVs8FKzSzxKUVvxE5WyAhESeV0-mVqUaJDFH6rNOpfV_0UJfi6S0lE53rBgrya3JUOZINCFT_YJd01I>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdegjeejtdcutefuodetggdotefrod
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
X-ME-Proxy: <xmx:1ZvMaAqZNl-3NH2alHB2jC8bJk7-JmdSKkZjqU3g_7lQYiUP5XvG5g>
 <xmx:1ZvMaOEcyAp1MXpQ0iCgUf91a3bVdJFLPjcWOlQKX7fYxpt1XWb6tw>
 <xmx:1ZvMaCl6EFMfIVtLpZNCdcbW-frGIOwOj5g_qONUenjL13-i5Cbt8A>
 <xmx:1ZvMaBldW0DFDQnVOHqJBP9IgllgfQf5xxfzCC7fCH0GYA304ggxqQ>
 <xmx:1ZvMaEEPMfbTp4J8z48-62ION6oIqn-JZ30GDEvB6mqPx-APd20k07kI>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 18 Sep 2025 19:55:00 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH v2 6/6] firewire: core: minor code refactoring to delete
 useless local variable
Date: Fri, 19 Sep 2025 08:54:48 +0900
Message-ID: <20250918235448.129705-7-o-takashi@sakamocchi.jp>
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
 Content preview: The do_reset local variable has less merit. Let's remove it.
 Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp> ---
 drivers/firewire/core-card.c
 | 15 ++++ 1 file changed, 4 insertions(+), 11 deletions(-) 
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
X-Headers-End: 1uzOT2-0003Sd-3f
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

The do_reset local variable has less merit. Let's remove it.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-card.c | 15 ++++-----------
 1 file changed, 4 insertions(+), 11 deletions(-)

diff --git a/drivers/firewire/core-card.c b/drivers/firewire/core-card.c
index 58d1f58a4a0f..4a5459696093 100644
--- a/drivers/firewire/core-card.c
+++ b/drivers/firewire/core-card.c
@@ -387,7 +387,6 @@ static void bm_work(struct work_struct *work)
 	struct fw_node *root_node __free(node_unref) = NULL;
 	int root_id, new_root_id, irm_id, local_id;
 	int expected_gap_count, generation;
-	bool do_reset = false;
 	bool stand_for_root = false;
 
 	if (card->local_node == NULL)
@@ -499,16 +498,10 @@ static void bm_work(struct work_struct *work)
 	else
 		expected_gap_count = 63;
 
-	/*
-	 * Finally, figure out if we should do a reset or not.  If we have
-	 * done less than 5 resets with the same physical topology and we
-	 * have either a new root or a new gap count setting, let's do it.
-	 */
-
-	if (card->bm_retries++ < 5 && (card->gap_count != expected_gap_count || new_root_id != root_id))
-		do_reset = true;
-
-	if (do_reset) {
+	// Finally, figure out if we should do a reset or not. If we have done less than 5 resets
+	// with the same physical topology and we have either a new root or a new gap count
+	// setting, let's do it.
+	if (card->bm_retries++ < 5 && (card->gap_count != expected_gap_count || new_root_id != root_id)) {
 		int card_gap_count = card->gap_count;
 
 		fw_notice(card, "phy config: new root=%x, gap_count=%d\n",
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
