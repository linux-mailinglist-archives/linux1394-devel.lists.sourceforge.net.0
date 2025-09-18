Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 499D8B87543
	for <lists+linux1394-devel@lfdr.de>; Fri, 19 Sep 2025 01:09:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9uGLYyGZov56988T0A+CGTVpHalf9yS7uHBg4+xPA5E=; b=Ag7Rp+rc4v+Mv4bKY3RqStdlhJ
	sVGPYBkSLuJM1IEN0j7xCtEZecnuJuLjfnV6OPbmYb36lKxBp5bePq8pJYUg1WKMH+gXPvYn/RT/d
	vLhs3D7uqByI+JlZTpZIs8f8Q2P01qcnrWDWaEc8qzxsPp0cSVdncXVuD00DW4OlTVZI=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uzNki-00010k-GB;
	Thu, 18 Sep 2025 23:09:25 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uzNkh-00010T-0s
 for linux1394-devel@lists.sourceforge.net;
 Thu, 18 Sep 2025 23:09:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RAKnE91e6mZe7mbb83yvaKy3djJ4JJZGxtMDS0v5CI4=; b=B8gsUVL2m6xfZXIaP4ycJApEri
 Cf9YxGnl/dP6CY2vCkgj8iat5/YHJK0MlVQtywpQxcKEKvNIgkxn9Z881WKYRpHgxZqEGv0E6vZ4+
 J7gOF9TLUCW2BVbWGA8yRPxdQ3I+gjYie8EQFEZE2VbCW4gneGfPuFecqnQ4U6mCg0So=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RAKnE91e6mZe7mbb83yvaKy3djJ4JJZGxtMDS0v5CI4=; b=B7V/7G6ZCA8fJ6QDpgPJITU/0B
 XTuYi+kXULcH4iDv2Y3n0SgOxcelmIi8yuuocjrxVPQCpDHczN0Dm5jX71UMpAnSNtg54mBl8oBX9
 pRh3Y87sUymqcnewslUYvVWuBVnj72BwSFv261e+ABnXBouV7yIUauTsz4ExgbqIDxGQ=;
Received: from fout-b1-smtp.messagingengine.com ([202.12.124.144])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uzNkh-00018a-1T for linux1394-devel@lists.sourceforge.net;
 Thu, 18 Sep 2025 23:09:23 +0000
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
 by mailfout.stl.internal (Postfix) with ESMTP id 8375C1D002D6;
 Thu, 18 Sep 2025 19:09:12 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-02.internal (MEProxy); Thu, 18 Sep 2025 19:09:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1758236952; x=
 1758323352; bh=RAKnE91e6mZe7mbb83yvaKy3djJ4JJZGxtMDS0v5CI4=; b=Y
 V1y0l/d4Qq2dM4gc2qpDojKYx3mUPlF0AUD3lWESgWHzNd0idz06ykcnNodldlXn
 KdWZTX2Rw+Sb4GKR4Rhl33pfuZtHzDV0C4wvBp9RHEBpICKEEoOc28sf6JvyNJ53
 xtov5nZYpIFm4HshpJ65QyiL/jiVwZ3vH2baZDAFSdupr+0BpNYaPlBf1jrnV3e+
 Eo5+vBsnZ0iXqt2gbo/4rfsvwwwhhIcuapKhqz5G16uaS6GisOnvUNhpLypi2vrx
 NquPgo0FAuWk/xYDQr8WkueIZZUeNtLnEZhPMEJGIVQgUUCBIVLZh9uVxL5S7g4V
 sCUf3DKRQpyddkInnkjsQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1758236952; x=1758323352; bh=R
 AKnE91e6mZe7mbb83yvaKy3djJ4JJZGxtMDS0v5CI4=; b=K9s7FSdWM2VwwlV7H
 a5VDrxwp0ObA5Q0V1cqnxLbqQz7oo6lSiEzQc6Z86gc/8gP0n/tnrbfV7QdQAac0
 o6G10/VntjxSHaSddANqcqsW1ZHPZvW7bSHRISYdG6LXqcfDFppO6SWZbqTI6UQ8
 USTQ63icdYvg7oQCKX2wlP8I3AeBgDuxJE2CV8oVdBWNabA1trdAb+03NrAtEDtF
 0pYNtZjRFuqvpUE+DroHCZE+2b1kyYPqUThbBduaszNZME8i0sJiRYIJpyU88O+T
 gUkdyhTCoFZ9t4esGDSGNadvJQURT+zaB3tJW/ZG5DtwNYanQCZaIpCOD0MWbMMu
 VpN7A==
X-ME-Sender: <xms:GJHMaHAPJI81I6Hdm3sR-kVCAIJ0c8SmCl81IEr0AufCCWa4dAXkLQ>
 <xme:GJHMaGewP53i004qBEvKrlsUu6JAXz9up414EeKNCfeKV6rvgZM3lTHx0GUU3XBVC
 yltlrCC9raNTGG6XsI>
X-ME-Received: <xmr:GJHMaEiRJrv6PM3Crut7TxeCnTdAo63uRINS0a19FVwARdUUThvL187AYt3rvPP77yOEsK6sfx2y9oYzcTz80RS8AVLbFFY68SkoeFJlFJhqHQ8>
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
X-ME-Proxy: <xmx:GJHMaGo-54-VV1HJ0h4Zy5O6pjCrrRu8PK-UBhCTgt56nSfowE3HhA>
 <xmx:GJHMaMHGEi-LDAWOcoXbBzWw5984uoXRUTHxUKqc4auPbaM9g9xEGw>
 <xmx:GJHMaIkO-rVzCQKz2VJGFeJMOmvfIVaO_WaYmiX9d9BHeURYKmB27A>
 <xmx:GJHMaPnJnUF1ln3yL-fk1nVyzaHAhAs7-rp9AeiXp7380z0lNGoteg>
 <xmx:GJHMaCHizeo8lFl1MqthmLYRwS304iO5zWl6aVpGFSRgVaqd7UOZXlbQ>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 18 Sep 2025 19:09:11 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 6/6] firewire: core: minor code refactoring to delete useless
 local variable
Date: Fri, 19 Sep 2025 08:08:57 +0900
Message-ID: <20250918230857.127400-7-o-takashi@sakamocchi.jp>
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
X-Headers-End: 1uzNkh-00018a-1T
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
index b766ce5fdea4..527a99ef7c90 100644
--- a/drivers/firewire/core-card.c
+++ b/drivers/firewire/core-card.c
@@ -387,7 +387,6 @@ static void bm_work(struct work_struct *work)
 	struct fw_node *root_node __free(node_unref) = NULL;
 	int root_id, new_root_id, irm_id, local_id;
 	int expected_gap_count, generation;
-	bool do_reset = false;
 	bool stand_for_root;
 
 	if (card->local_node == NULL)
@@ -500,16 +499,10 @@ static void bm_work(struct work_struct *work)
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
