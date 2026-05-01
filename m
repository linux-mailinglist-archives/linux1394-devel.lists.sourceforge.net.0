Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ihVOK5qx9GnVDgIAu9opvQ
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	for <lists+linux1394-devel@lfdr.de>; Fri, 01 May 2026 15:58:50 +0200
X-Original-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D4304ACF32
	for <lists+linux1394-devel@lfdr.de>; Fri, 01 May 2026 15:58:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FWiS856O2M5oY0xWVAOFqw6yH1HR+mnvqIoybV0+8RY=; b=jxRYcX0UvVBpjYMMcgPnwkj3H3
	92s71CxA0Ik/vWKUrROhpJc7/9ahLsa6tI8LuwL6mTnDzVsdepImpsjPPQbtNipnDEZNjMPJaI0Hj
	crhNhR6HbYlTDwsSJc6Sx/4li6+e2Ygx60f0bCCVbLPPdvYneP3x7mDf1PLUbWc++8Nc=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1wIoO7-000431-AG;
	Fri, 01 May 2026 13:58:40 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1wIoO6-00042p-CE
 for linux1394-devel@lists.sourceforge.net;
 Fri, 01 May 2026 13:58:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Th5S91UAIDprKOAcqeblHzt8y0T+mD9ozKWgcZSujhQ=; b=S3A4ZPK62PCjTIpf2Mw3ZgUQ8W
 gqdnOOM1/cJzj/n+MQ22+EqX7O1UPWqVzOFXD/bfBTgiHk/BwPeGt+Bmx9tsTo0C81JZS60ImtO18
 R8TvasMfvnE5RSdMsAG+qW9HXq36OPZArmH9ONCQbZQC+HmRFY14NnlgfcbqUnuYO0FI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Th5S91UAIDprKOAcqeblHzt8y0T+mD9ozKWgcZSujhQ=; b=KrVfLiEMHnFAS0FtlFGbr7IRRt
 N224ZYxyciyrP6z3KjC2vfezdT63pqpTs4YaqwJuz0+BzymqY34pvMP1jyo/NpBv8HJK9aFwD1XaT
 zyCy5JV+/rwDnYI3J0pLkcPvF9nOlp8mXzGfySoqlogSxVI3n+PMqxiz3VdAcsjXc3Ec=;
Received: from fhigh-b2-smtp.messagingengine.com ([202.12.124.153])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wIoO6-0005iS-It for linux1394-devel@lists.sourceforge.net;
 Fri, 01 May 2026 13:58:39 +0000
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
 by mailfhigh.stl.internal (Postfix) with ESMTP id D39807A00D7;
 Fri,  1 May 2026 09:58:32 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
 by phl-compute-05.internal (MEProxy); Fri, 01 May 2026 09:58:32 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1777643912; x=
 1777730312; bh=Th5S91UAIDprKOAcqeblHzt8y0T+mD9ozKWgcZSujhQ=; b=p
 Udr3Zxye4WZecCeMiKjY2fjZx+BktHkNJWBgwi7cih0ZLHh4iKdbi84O5CJs78qd
 O5mpOAGtW2VKtSVNrXEyVljl0vt6QVfuyYAzXqExyaY/hdrOJ4JVdsxSrmzLubNs
 sY+7G4lhADVJL1K88DX7XvEPX16K8a2AbJiaPBf+obzkSV6/3iFNmFGFnZbQXIsH
 EuvE+RyvtNmvlSaw9muTbDUfdqG2x7/2ryhAPAbrdXSg3GUjuJZQ5tGMZ/VuxEr7
 78EPSH7Sv+KQ/qNitoH1sjK7otN5rwHzNq6lJTY8tVfXCcdCpXtcbP8yndtlTV0J
 CNVc1xfKZ/0O8vdo6rjaw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm3; t=1777643912; x=1777730312; bh=T
 h5S91UAIDprKOAcqeblHzt8y0T+mD9ozKWgcZSujhQ=; b=cq10QSMmpR1IfG1rD
 pv9YFBvAWdoOEdkjpj7C0oJkJ3rvaOvQuJdIhMJ7tOao0M0y9Zn8JOTytpHeq2Uq
 Hgcf7cz4nUUTYKGJFlqL0NSuM9L164JbmiLrKQ+y/DwRoWf7/2YjX7z+1As3ONoj
 B3H6x64U7gWn0L1Z6S+oZ6rl/o+N7JQjMrti2ExBV/lzollBFf0clCS6b+cpsyeV
 /0pM3TnAqLgIOLDFDgxSQZf7yy9PUJ6zOoUAwTfldJl1AaFlMfF9v29rCP+z9Jjg
 2Jx+qQS5iqceXY2pjpz4emJ/MjR7JrnBbqB7GRCRbQ6FpsAeubIkO+UN0FYzifUJ
 e6d/Q==
X-ME-Sender: <xms:iLH0afrvVj4W6qFW5VvYjswtIPkE6WRmsGNxjN2brdRIBpjmgB-XvA>
 <xme:iLH0aXkS8dRyPBR2a2kLrZXz49Yzb1V3klIu2VasOmO-j8p8uG5zlYBgLZv_BOo3h
 11uUP0P8gSD4-5N8vP0c9vvloR5BVb3iMVXXsy0mdGMkrAzX7Z0vYs>
X-ME-Received: <xmr:iLH0aTwRkCAmOICw7rbT8YIGbKhBHojHtZSuSSOvBMgf0lo6M2m3axBtGcbZe7YdEqIkG251CcfrMjDIauKs0BLVmTrvrNasG3GLavIy2O2s_g>
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
X-ME-Proxy: <xmx:iLH0afkpu9V-2LroJpixwUcHRoPxvXS1U8jvqurFtL6mA8VWf42B6A>
 <xmx:iLH0acdHh6ProIviFDBfKR0dw6AdqYH9RPYMjSEBSNbKpE_H9Ta07Q>
 <xmx:iLH0aVpRXJrO5QaRuShFWwfnNmo6HWY6mpyC1cr8jNicKyGamGfp_w>
 <xmx:iLH0aa6H2-lUKeqcIx_dWSgHF4k0UfL7-MEbYqOSYpNx-kE4-Pkqxg>
 <xmx:iLH0aefXtlqn6DFJB11VkHCfWYnZEJLng4Fa7WWEdlzmfwJUeTX-i1gU>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 1 May 2026 09:58:31 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 4/4] firewire: core: move allocation/reallocation paths into
 specific branch after isoc resource management in cdev
Date: Fri,  1 May 2026 22:58:23 +0900
Message-ID: <20260501135823.241940-5-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260501135823.241940-1-o-takashi@sakamocchi.jp>
References: <20260501135823.241940-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  After managing the actual isochronous resources, there is
 post-processing logic to determine what type of event should be notified.
 However, there is room for improvement. This commit refactors the logic. 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1wIoO6-0005iS-It
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
X-Rspamd-Queue-Id: 1D4304ACF32
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.01 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	DMARC_POLICY_SOFTFAIL(0.10)[sakamocchi.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_MIXED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,sakamocchi.jp:s=fm3,messagingengine.com:s=fm3];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:helo,lists.sourceforge.net:dkim,lists.sourceforge.net:rdns,sakamocchi.jp:mid,sakamocchi.jp:email]

After managing the actual isochronous resources, there is
post-processing logic to determine what type of event should be
notified. However, there is room for improvement.

This commit refactors the logic.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-cdev.c | 53 ++++++++++++++++++------------------
 1 file changed, 26 insertions(+), 27 deletions(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index 4ce8754da93f..c166e7617d2a 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -1331,7 +1331,7 @@ static void iso_resource_auto_work(struct work_struct *work)
 	unsigned long index = r->resource.handle;
 	int current_generation, resource_generation, channel, bandwidth, todo;
 	u64 reset_jiffies;
-	bool free = false, success;
+	bool free;
 
 	scoped_guard(spinlock_irq, &client->lock) {
 		reset_jiffies = client->device->card->reset_jiffies;
@@ -1364,37 +1364,31 @@ static void iso_resource_auto_work(struct work_struct *work)
 	fw_iso_resource_manage(client->device->card, current_generation, r->params.channels,
 			       &channel, &bandwidth, todo != ISO_RES_AUTO_DEALLOC);
 
-	/*
-	 * Is this generation outdated already?  As long as this resource sticks
-	 * in the xarray, it will be scheduled again for a newer generation or at
-	 * shutdown.
-	 */
-	if (channel == -EAGAIN &&
-	    (todo == ISO_RES_AUTO_ALLOC || todo == ISO_RES_AUTO_REALLOC))
-		goto out;
-
-	success = channel >= 0 || bandwidth > 0;
-
-	scoped_guard(spinlock_irq, &client->lock) {
-		// Transit from allocation to reallocation, except if the client
-		// requested deallocation in the meantime.
-		if (r->todo == ISO_RES_AUTO_ALLOC)
-			r->todo = ISO_RES_AUTO_REALLOC;
-		// Allocation or reallocation failure?  Pull this resource out of the
-		// xarray and prepare for deletion, unless the client is shutting down.
-		if (r->todo == ISO_RES_AUTO_REALLOC && !success &&
-		    !client->in_shutdown &&
-		    xa_erase(&client->resource_xa, index)) {
-			client_put(client);
-			free = true;
-		}
-	}
-
 	if (todo == ISO_RES_AUTO_DEALLOC) {
 		free = true;
 		e = r->e_dealloc;
 		r->e_dealloc = NULL;
 	} else {
+		free = false;
+
+		// Is this generation outdated already?  As long as this resource sticks in the
+		// xarray, it will be scheduled again for a newer generation or at shutdown.
+		if (channel == -EAGAIN)
+			goto out;
+
+		bool success = channel >= 0 || bandwidth > 0;
+
+		if (!success) {
+			// Allocation or reallocation failure?  Pull this resource out of the
+			// xarray and prepare for deletion, unless the client is shutting down.
+			scoped_guard(spinlock_irq,  &client->lock) {
+				if (!client->in_shutdown && xa_erase(&client->resource_xa, index)) {
+					client_put(client);
+					free = true;
+				}
+			}
+		}
+
 		if (todo == ISO_RES_AUTO_REALLOC) {
 			if (success)
 				goto out;
@@ -1403,6 +1397,11 @@ static void iso_resource_auto_work(struct work_struct *work)
 			e = r->e_dealloc;
 			r->e_dealloc = NULL;
 		} else {
+			// Transit from allocation to reallocation, except if the client requested
+			// deallocation in the meantime.
+			scoped_guard(spinlock_irq,  &client->lock)
+				r->todo = ISO_RES_AUTO_REALLOC;
+
 			if (channel >= 0)
 				r->params.channels = 1ULL << channel;
 
-- 
2.53.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
