Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F98B481FA
	for <lists+linux1394-devel@lfdr.de>; Mon,  8 Sep 2025 03:21:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GEkDTBzoB4wCUzvePpkbVGlvZ0W3U4Toj0wsgMkdoVE=; b=J65Yfl0Js0CBEio1uyDppGFRQq
	URuplxJFGEeENvqZjgivGxoUaFzlFX+6z5+4TnaExupTTjq6rpFQwRMXrOWKBhf7PQG9Fgow5FjGz
	tzIUVT2GlufNnV5iRhwia97uG2i7JISyhXA42QDGOyIzwJhD8rhCvcBxsdp9hKV+23aU=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uvQZV-0006zZ-9G;
	Mon, 08 Sep 2025 01:21:29 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uvQZT-0006zL-Pt
 for linux1394-devel@lists.sourceforge.net;
 Mon, 08 Sep 2025 01:21:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ORliYewnYZlo6BK2CHJ6vPurP1L4VVoWaqONrnniiRY=; b=V95ZNwPnfl5QdPQ2vXRr1jQ+Nr
 R6luNasT/dlt1Lea2P7uhcRTPo4L+cngeAJB273aHGp60ROYNcaTdE0NAg7v+X1MHIc4oEc36Kclz
 /rPhP5NHKsmJyYvvPFCpE8yZbHT3/rPaL6H2tovUiJMQNNC414CndLUTGEVHYCmwCIhA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ORliYewnYZlo6BK2CHJ6vPurP1L4VVoWaqONrnniiRY=; b=P3v/9FX5WU83Z4HaE0U7bAfM/V
 ATQ/1U0Bqiy+MiMkTDm7stUPbkjHnFMD21I8J5S7OjIdtE8K59sfzp1x7NsK4l2KcBdf/y5L8YrL+
 HsGS+Lt+7cIeO4kORPPW8p77ROtKH1bBej483CazoRpoMYHSc5DDGZXiBCar4SmukegM=;
Received: from fhigh-a2-smtp.messagingengine.com ([103.168.172.153])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uvQZT-0001ip-6q for linux1394-devel@lists.sourceforge.net;
 Mon, 08 Sep 2025 01:21:27 +0000
Received: from phl-compute-11.internal (phl-compute-11.internal [10.202.2.51])
 by mailfhigh.phl.internal (Postfix) with ESMTP id A8C761400013;
 Sun,  7 Sep 2025 21:21:16 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-11.internal (MEProxy); Sun, 07 Sep 2025 21:21:16 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1757294476; x=
 1757380876; bh=ORliYewnYZlo6BK2CHJ6vPurP1L4VVoWaqONrnniiRY=; b=s
 js+Rkr8KpUnKs2CXhaBwSbjFNt8Bkl/WIl2TxNMgQIsyPBWvNIDXRmlPvG7ZEKMH
 CCSLAt3dTaCpXOyXySo8SFAI82bmgOoKQmY1RbCNqyh+7GA9xu8NNTMUUQe8i8Ru
 ylNfJKrHFWQ6wczhlT8iE2IK0KAlwNS+z/3t+FwzRQUwV+4gi0ZKkjw4rQaXujz1
 7eDwTvwDMDu7+7vAC8C1evvRk1h/14e/9kAcSVnScHP2cR8cp8QbzwW39/D4AUEM
 ToGqXPch4WQq6dg5KjsylYDtHCLGYlGvogh1Qa/JS4AtcvA/QMax8U9jZtKh3GQh
 ryuSMUcimFXR5rBxYNfCg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1757294476; x=1757380876; bh=O
 RliYewnYZlo6BK2CHJ6vPurP1L4VVoWaqONrnniiRY=; b=dga+qsR3Op+h47ujO
 JY77MDX269onrIQo3h7HDSnuaErlhWZwjWTmqZ5v00ypGWClNtPmPN4MKc3EvvmJ
 94xWjMFKAE3zsI1zwDZlMwFo+djgOKNS0oJg/E/ttmqFDBGvr5+CPOBHvjt0u0kb
 C5VAAMLhJgDJzk8oDkvfFKdKyBsV/LWl90mwkjMOqwXjO8aStorU8zgFlvrEkFkQ
 0LhYNiR531Jgsy21wvCvm3o7iNeJzfxdgeEFcl4L2Ngz7fn4jYCKNr7wlxlIQXFJ
 y1GMfaT1bnaasWhslnhiFR2B7JzgBCCB5h8f+xNIp7OgxPZo+mx2g6vKTWdspnwh
 Qi9dQ==
X-ME-Sender: <xms:jC--aOv58rvl02N-OQ5FU-ueD9DxB3gYon37DiOF28__skhJ69Q74Q>
 <xme:jC--aMYIaGuVB_ldHG5GKO65Ktz_VqPmFdJKu0vCLl8isTXE4bmh47BeNKle-0yDI
 KZtOX6GImRGCHtLLeo>
X-ME-Received: <xmr:jC--aLuLTZsvrFFxfAmX6WmSvCs3v5pw7AInyOFLbAUfn9TTJE_0UKoL_ReQL-vUIB7DrUMSklbv_T1fbzP-68lglSAV-mZ-QOC1GH56RkU>
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
X-ME-Proxy: <xmx:jC--aGEzh6G7ScRWCBtW4zvjiaIsqOfCfdtz-V5PyMWWkg_fcY2dug>
 <xmx:jC--aOz992s_f_BDyz0gN6iqX1X8_Pd4sZ0kjcKiYJ4N5SVHO6Jezg>
 <xmx:jC--aNgtx7jIsD5txFMhZmTvCfAyR1LS558iaTwor7fs6vIJ5ahZUA>
 <xmx:jC--aJwY6RuKFr40t7J3SjktE7NmOVDh4skhJlN4-rUmNASh0B7USw>
 <xmx:jC--aLSytRqsPntMcSdR_5cQPyc1XHEDCHa2MiIfHRymjyA2AeUx8UcE>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 7 Sep 2025 21:21:15 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 02/11] firewire: core: utilize cleanup function to release
 workqueue in error path
Date: Mon,  8 Sep 2025 10:20:59 +0900
Message-ID: <20250908012108.514698-3-o-takashi@sakamocchi.jp>
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
 Content preview:  The helper macro, retain_and_null_ptr(),
 introduced by a commit
 092d00ead733 ("cleanup: Provide retain_and_null_ptr()") in v6.16 kernel,
 is useful in the error path to release the part of structure me [...] 
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
X-Headers-End: 1uvQZT-0001ip-6q
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

The helper macro, retain_and_null_ptr(), introduced by a commit
092d00ead733 ("cleanup: Provide retain_and_null_ptr()") in v6.16 kernel,
is useful in the error path to release the part of structure member.

This commit uses the relatively new function.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-card.c | 40 ++++++++++++++++++++----------------
 1 file changed, 22 insertions(+), 18 deletions(-)

diff --git a/drivers/firewire/core-card.c b/drivers/firewire/core-card.c
index aae774e7a5c3..d128c7a8bf5f 100644
--- a/drivers/firewire/core-card.c
+++ b/drivers/firewire/core-card.c
@@ -570,9 +570,13 @@ void fw_card_initialize(struct fw_card *card,
 }
 EXPORT_SYMBOL(fw_card_initialize);
 
+DEFINE_FREE(workqueue_destroy, struct workqueue_struct *, if (_T) destroy_workqueue(_T))
+
 int fw_card_add(struct fw_card *card, u32 max_receive, u32 link_speed, u64 guid,
 		unsigned int supported_isoc_contexts)
 {
+	struct workqueue_struct *isoc_wq __free(workqueue_destroy) = NULL;
+	struct workqueue_struct *async_wq __free(workqueue_destroy) = NULL;
 	int ret;
 
 	// This workqueue should be:
@@ -587,10 +591,10 @@ int fw_card_add(struct fw_card *card, u32 max_receive, u32 link_speed, u64 guid,
 	//  * == WQ_SYSFS		Parameters are available via sysfs.
 	//  * max_active == n_it + n_ir	A hardIRQ could notify events for multiple isochronous
 	//				contexts if they are scheduled to the same cycle.
-	card->isoc_wq = alloc_workqueue("firewire-isoc-card%u",
-					WQ_UNBOUND | WQ_FREEZABLE | WQ_HIGHPRI | WQ_SYSFS,
-					supported_isoc_contexts, card->index);
-	if (!card->isoc_wq)
+	isoc_wq = alloc_workqueue("firewire-isoc-card%u",
+				  WQ_UNBOUND | WQ_FREEZABLE | WQ_HIGHPRI | WQ_SYSFS,
+				  supported_isoc_contexts, card->index);
+	if (!isoc_wq)
 		return -ENOMEM;
 
 	// This workqueue should be:
@@ -602,14 +606,14 @@ int fw_card_add(struct fw_card *card, u32 max_receive, u32 link_speed, u64 guid,
 	//  * == WQ_SYSFS		Parameters are available via sysfs.
 	//  * max_active == 4		A hardIRQ could notify events for a pair of requests and
 	//				response AR/AT contexts.
-	card->async_wq = alloc_workqueue("firewire-async-card%u",
-					 WQ_UNBOUND | WQ_MEM_RECLAIM | WQ_FREEZABLE | WQ_HIGHPRI | WQ_SYSFS,
-					 4, card->index);
-	if (!card->async_wq) {
-		ret = -ENOMEM;
-		goto err_isoc;
-	}
+	async_wq = alloc_workqueue("firewire-async-card%u",
+				   WQ_UNBOUND | WQ_MEM_RECLAIM | WQ_FREEZABLE | WQ_HIGHPRI | WQ_SYSFS,
+				   4, card->index);
+	if (!async_wq)
+		return -ENOMEM;
 
+	card->isoc_wq = isoc_wq;
+	card->async_wq = async_wq;
 	card->max_receive = max_receive;
 	card->link_speed = link_speed;
 	card->guid = guid;
@@ -617,18 +621,18 @@ int fw_card_add(struct fw_card *card, u32 max_receive, u32 link_speed, u64 guid,
 	scoped_guard(mutex, &card_mutex) {
 		generate_config_rom(card, tmp_config_rom);
 		ret = card->driver->enable(card, tmp_config_rom, config_rom_length);
-		if (ret < 0)
-			goto err_async;
+		if (ret < 0) {
+			card->isoc_wq = NULL;
+			card->async_wq = NULL;
+			return ret;
+		}
+		retain_and_null_ptr(isoc_wq);
+		retain_and_null_ptr(async_wq);
 
 		list_add_tail(&card->link, &card_list);
 	}
 
 	return 0;
-err_async:
-	destroy_workqueue(card->async_wq);
-err_isoc:
-	destroy_workqueue(card->isoc_wq);
-	return ret;
 }
 EXPORT_SYMBOL(fw_card_add);
 
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
