Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OEMmJ5qx9GmmDgIAu9opvQ
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	for <lists+linux1394-devel@lfdr.de>; Fri, 01 May 2026 15:58:50 +0200
X-Original-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B98724ACF2F
	for <lists+linux1394-devel@lfdr.de>; Fri, 01 May 2026 15:58:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tUR6tZVm40G7ZiLj7Y4fx3TLUQHpNf4xfkT8lpcPqs4=; b=YMwPwp2YapkS+6kapiYKvh9kA7
	caUPgsSEx/mmggIRUEXC/1HdTlfV3sWEuAi08/NoZO/+p8oJWGfT0xlF/2QdxJsN+lbqiVFMRkfmR
	0WRdb52I7KSO+mKRHAqnKGlq/OZMmZzPKQ7saiiStSADMPUJLyoAHlJOLKOHBUkzT2RI=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1wIoOA-0001yD-VU;
	Fri, 01 May 2026 13:58:40 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1wIoO8-0001y1-NY
 for linux1394-devel@lists.sourceforge.net;
 Fri, 01 May 2026 13:58:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2k34AQgQBKDdUYmfnYGoLCcisq3/RTFNeaJ6w1tFMlo=; b=BfmlD+EqXjPViG42cr1RLcao2o
 y0fMssAeLfxbHkmIgsTL30s9/AkizPBQIEqfLM9ls8G83kBNxt3KxJltbZGreMImvYeiuDDVvHaN7
 nH/2pote5J8VitHoXe26GzVlsYEdpLNXGwWOArKtVKnO6o85i43iepqEEzEqQHf6PGRM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2k34AQgQBKDdUYmfnYGoLCcisq3/RTFNeaJ6w1tFMlo=; b=Wr3mLgVH4qMNg+6Ybf7V1xNI7B
 Nx+/KmCKU/heLsV7T8B5Uw8amFHenAJjxXAfVcGEN7rct+Kfjna5ZuTFRZ2ND9gdEk1JhhXq1hCQ5
 0RtnPdBQKZWJPd+8027zRkneanLoUzw8MMCtX+azP5umdpI3Ymg4omuuu+2CDuJZI4yw=;
Received: from fout-b1-smtp.messagingengine.com ([202.12.124.144])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wIoO3-0005i5-MN for linux1394-devel@lists.sourceforge.net;
 Fri, 01 May 2026 13:58:38 +0000
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
 by mailfout.stl.internal (Postfix) with ESMTP id 310D41D00107;
 Fri,  1 May 2026 09:58:30 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
 by phl-compute-05.internal (MEProxy); Fri, 01 May 2026 09:58:30 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1777643910; x=
 1777730310; bh=2k34AQgQBKDdUYmfnYGoLCcisq3/RTFNeaJ6w1tFMlo=; b=o
 c8snJo2QbzcXb3DDrIM8iirhmgNJ/uSDOiKNxAcjvES1ku5vorjgKOqz9Y9f7NTO
 Kn68qbwCYu7iTNGzPkByw0fR9qU7WDvQVeWjTSeb4ZNPayOovFwM6erab9zYJQKA
 WXZyCXIOWqUgI4sz1w1Qp4jgz+M0TULPIFSJj+2k8Bjxv23IwIJB6zNyjxbnWGO8
 vZ2tKera6FWGb9EiGWUjKmWuj6TzLwh6ajGWHL0bwWv3FI/RnaC+5JHyx+Cyw3Xc
 b0Ly3QJbpJCYIwROI88w1Md7l0aWJbv9cTKfQjyKwrR5fOXQPN1kdJZjZRamTlFJ
 JfRmGPmRdXr2IoVdRBKDQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm3; t=1777643910; x=1777730310; bh=2
 k34AQgQBKDdUYmfnYGoLCcisq3/RTFNeaJ6w1tFMlo=; b=qsF0UCr4x6DIdKfcl
 ymL/iH4/gIEiwD/Jz5J2qOCwxh25DJhneVHSRFU397pjLy3xN694C2bMcsIU0zwC
 Fc5eJ6PBekhrkI/ACqxGDEj52XmbGaC+WMnExs3SMT95xN7CCNRBK+1nhN3DllYL
 ADccJxDA/tXv5qpQa/RNxSu5Ozhx6AO037BH8qppeXsRqgJ0y6DSsOZ2WajkSJL4
 f2zmE7g8EQJYvsoSnE03D+2g2B7FLwUj08SQIm7CMrzoqLmGkuNxZ5Yk98YbQMpo
 ITZxA+r7y6+tKAz8NGsobheEGHvS0lPRSkBj14+1JgIQgVn8zbfxP7QNAbhN9T5z
 S2FQw==
X-ME-Sender: <xms:hrH0aemmic-Pq-gSwnYNtAWo3yNOlri4oMsIl920re4YEBBeoMQYPQ>
 <xme:hrH0aTywNx5w5JP4FUQe19B3gKBr0reIyulOYJGu2NPVTA-oGQ4_vEolOHkCyYqEw
 kGkNtscqHTF4IS8f9yDUOorvSREyKgIKCH1jFOjAtrR0o4r9t5TkmI>
X-ME-Received: <xmr:hrH0aUNvIk9xg3Aqv-IFveJF2DWodqcgSWcYVw4o781W3jUlyD-7dnoO11hgKBTO2tnnR1Q4trGppbWxjH4sUPTnAwZKR1hY3yRWqievoHlBrA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdeltdefkecutefuodetggdotefrod
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
X-ME-Proxy: <xmx:hrH0afR8--rmPPFocCkFteCKK-7wuU7T93zKe0wq-d0Iqn1hbS74rg>
 <xmx:hrH0aaYe3KPU22ZBMbsjx3htruxyTH2MGTyIpluahCApgAPQglBszQ>
 <xmx:hrH0aU0oHG8BgZx-xSVJc6yPw_fv-eO4BXaXV2MlSm56QEkZg2QC-g>
 <xmx:hrH0aSVfrLxablcAr2EBgmrspK8lXAGvCBG7OzfH5zu0we7afJiZdw>
 <xmx:hrH0aY4XeAmXteNhlUFwByAj87HfVZLYD-CijXTgmmD9w4mlid-lMhsQ>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 1 May 2026 09:58:29 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 2/4] firewire: core: use switch statement for post-processing
 of isoc resource management in cdev
Date: Fri,  1 May 2026 22:58:21 +0900
Message-ID: <20260501135823.241940-3-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260501135823.241940-1-o-takashi@sakamocchi.jp>
References: <20260501135823.241940-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The iso_resource_auto structure object has three states. The
 current implementation of state evaluation before managing the actual
 isochronous
 resources can be improved. This commit refactors the evaluation logic using
 a switch statement. 
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
X-Headers-End: 1wIoO3-0005i5-MN
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
X-Rspamd-Queue-Id: B98724ACF2F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.01 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	DMARC_POLICY_SOFTFAIL(0.10)[sakamocchi.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_MIXED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,sakamocchi.jp:s=fm3,messagingengine.com:s=fm3];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[o-takashi@sakamocchi.jp,linux1394-devel-bounces@lists.sourceforge.net];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,sakamocchi.jp:-,messagingengine.com:-];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[linux1394-devel];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sakamocchi.jp:mid,sakamocchi.jp:email,lists.sourceforge.net:helo,lists.sourceforge.net:dkim,lists.sourceforge.net:rdns]

The iso_resource_auto structure object has three states. The current
implementation of state evaluation before managing the actual isochronous
resources can be improved.

This commit refactors the evaluation logic using a switch statement.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-cdev.c | 37 +++++++++++++++++++-----------------
 1 file changed, 20 insertions(+), 17 deletions(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index 887783e4bd52..0d57b61ade12 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -1331,7 +1331,7 @@ static void iso_resource_auto_work(struct work_struct *work)
 	unsigned long index = r->resource.handle;
 	int current_generation, resource_generation, channel, bandwidth, todo;
 	u64 reset_jiffies;
-	bool skip, free, success;
+	bool free = false, success;
 
 	scoped_guard(spinlock_irq, &client->lock) {
 		reset_jiffies = client->device->card->reset_jiffies;
@@ -1341,27 +1341,29 @@ static void iso_resource_auto_work(struct work_struct *work)
 		todo = r->todo;
 	}
 
-	// Allow 1000ms grace period for other reallocations.
-	if (todo == ISO_RES_AUTO_ALLOC &&
-	    time_is_after_jiffies64(reset_jiffies + secs_to_jiffies(1))) {
-		schedule_iso_resource_auto(r, msecs_to_jiffies(333));
-		skip = true;
-	} else {
+	switch (todo) {
+	case ISO_RES_AUTO_ALLOC:
+		// Allow 1000ms grace period for other reallocations.
+		if (time_is_after_jiffies64(reset_jiffies + secs_to_jiffies(1))) {
+			schedule_iso_resource_auto(r, msecs_to_jiffies(333));
+			goto out;
+		}
+		break;
+	case ISO_RES_AUTO_REALLOC:
 		// We could be called twice within the same generation.
-		skip = todo == ISO_RES_AUTO_REALLOC &&
-		       resource_generation == current_generation;
+		if (resource_generation == current_generation)
+			goto out;
+		break;
+	case ISO_RES_AUTO_DEALLOC:
+	default:
+		break;
 	}
-	free = todo == ISO_RES_AUTO_DEALLOC;
-
-	if (skip)
-		goto out;
 
 	bandwidth = r->params.bandwidth;
 
-	fw_iso_resource_manage(client->device->card, current_generation,
-			r->params.channels, &channel, &bandwidth,
-			todo == ISO_RES_AUTO_ALLOC ||
-			todo == ISO_RES_AUTO_REALLOC);
+	fw_iso_resource_manage(client->device->card, current_generation, r->params.channels,
+			       &channel, &bandwidth, todo != ISO_RES_AUTO_DEALLOC);
+
 	/*
 	 * Is this generation outdated already?  As long as this resource sticks
 	 * in the xarray, it will be scheduled again for a newer generation or at
@@ -1398,6 +1400,7 @@ static void iso_resource_auto_work(struct work_struct *work)
 		e = r->e_alloc;
 		r->e_alloc = NULL;
 	} else {
+		free = true;
 		e = r->e_dealloc;
 		r->e_dealloc = NULL;
 	}
-- 
2.53.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
