Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UKI2LJqx9GmmDgIAu9opvQ
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	for <lists+linux1394-devel@lfdr.de>; Fri, 01 May 2026 15:58:50 +0200
X-Original-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3902F4ACF33
	for <lists+linux1394-devel@lfdr.de>; Fri, 01 May 2026 15:58:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/hB8ZfgJvEwagjTUxVDrtqCCLoyzWYIck55N2TvOvTc=; b=WMNOZtSlHaxwzTuanTEwsABYwr
	4pZB68AqAvyrA/we8NqoLq/v6mraTLkNRG63Vy4hg38JWsqyxU1Jqw1feqsiH9F3igeBB5DCG2vZu
	b8fDgXapmKxzB8TKl1d8HPgLUrITlW1ugsqIOB7UjHa2l5/CvGBGmRnJC4dPVzI683z4=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1wIoOF-0001ym-86;
	Fri, 01 May 2026 13:58:44 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1wIoOE-0001yV-05
 for linux1394-devel@lists.sourceforge.net;
 Fri, 01 May 2026 13:58:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uojPCuE4kirNqPd4RC4rH9WIYRHt2M7diKe8bhLfrsg=; b=V5wCOIh3E1UNfkTfN4RAyd0Je9
 ec4rhdNPCfXk7O3YLWOjr8hhKJkXkP4msbobWZkAOXx3Qxc90IYKV6xF3utTkcitQwcdOkXvIsoUr
 ghKATeAmbCiRed91br+uUYheAL8fZYb8YS55VCkKy8bjPNk/isO/bSDEtByoE4ON2Lh8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uojPCuE4kirNqPd4RC4rH9WIYRHt2M7diKe8bhLfrsg=; b=T7iS7H5I+Zs11ghiAeBD+ZcV4j
 b9CbUm+GhDZCrrLjueP0+HC9lgizwDXmLjJYG5uy7XNquU82CQNosIq0ek04KKo5UDsdie9GqKn0s
 i85J4R36Om9509NcyzBZltbEP9F9aPrRydNckbK7K9Ls77nDzzsAqFQWpbZInvP8RBX0=;
Received: from fhigh-b2-smtp.messagingengine.com ([202.12.124.153])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wIoOA-0005iy-4S for linux1394-devel@lists.sourceforge.net;
 Fri, 01 May 2026 13:58:43 +0000
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
 by mailfhigh.stl.internal (Postfix) with ESMTP id 894577A0087;
 Fri,  1 May 2026 09:58:31 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
 by phl-compute-06.internal (MEProxy); Fri, 01 May 2026 09:58:31 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1777643911; x=
 1777730311; bh=uojPCuE4kirNqPd4RC4rH9WIYRHt2M7diKe8bhLfrsg=; b=r
 XNfs74f8V64ZdDLTnRLFAVXWoYSFgykxACjIU1Dul4gFg+ZWQDzpE0AE/BuhA/mz
 rNEr0STbMPbOQPutn/hfgzAmPX9Wa+c6OxGCSZkcwVQF5JKZH+uRkjlZlxrJOnkC
 nJE8vi5zoXGrCpqxYS6YItwtTJbc1dzqYQjO1LVypEacuXAjA2ttVv4yjN3hdxSC
 tTJXaVRpK3Xt5CRprs4y8hJYx1wBBKCOd2OyS1IFmWYoV6IvebIgt04Z5NoMsHUX
 2UTKNWg6MBErG+oiF4t5pIrqR5CP4R2Xazqk7AHSdbD+WMFKJ+DtTlQugt1CKMCT
 rA9LM7L2VXhVBzLQVykcw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm3; t=1777643911; x=1777730311; bh=u
 ojPCuE4kirNqPd4RC4rH9WIYRHt2M7diKe8bhLfrsg=; b=Gz8Z+5GQDVPrYJzd9
 gsosfhIRpx2l9Z22MriTPv7uw50qqmqDBLSlYbnk+V0kGU/2G4YVlzeMb5kMbRyp
 4zabR/kh4dF1qrF3h05AKXE/aS5WDSF0cCl4TRy9QmkWY26bwbmUbTx49/MqqFnL
 M6ZXjlnooGdcFJrPEO/10aNZi11IuSACnJB29WnwlUcQMwHbXqVRLb2A/lKKOxMt
 TdSff4YrSu9ZFvQJ3pnC4A3j41xXbcQSDD+v8GTQcMlq10+IraDaFxRhAA/dCapW
 e8qHhM1xxadzA9CEzfLhpC7D4ddS5KVIE7o8F9IXoLP2t3hgyGe4bbIaS9d+gP2h
 cY2Hw==
X-ME-Sender: <xms:h7H0aVLQric7q_Xk6ADTZmi5WW5p1ppH4yujIDTBQi1lP_RTGjNgRw>
 <xme:h7H0afGnCkQJ0XV5kaCwP4WDrjTeZYVJl8vYw1RncJmloIh1FYpKnFbSJ-hBzuuBH
 UuZ_3xc3za3CfeEi2cj4idw52c2d0h-QodGCJ1WN1bwczRDXSljWCU8>
X-ME-Received: <xmr:h7H0aVSFXkVjiVH2dDX3Tm9u_fFsTNsMvIuLC_qzMbpN99Mn6JqBIGQCkRz9HB8q8ZcN1nH1hDwjN7Nc5UhsJkNtdOiTIIQ2jzeP_KWboQiwRw>
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
X-ME-Proxy: <xmx:h7H0aTEoENQsLEeKQev_b2UiKnJFDFfpcrwmLvKKCyKVBMNZSYXjzg>
 <xmx:h7H0aZ_VvTVdmOVfV0ojrCpvvL7l7OXGPpvo1okpiMPWyGVSX6dfqw>
 <xmx:h7H0aVLGJvK2v8i2DfCJFsuFmHWH7zC3tD6m50uihiBpQ4JQMQU0ZA>
 <xmx:h7H0aUYlxhTYGQ_ZxNhBHlEAIWtRyLOELERGfJQQLLKXlszZo0tsOQ>
 <xmx:h7H0af-sfIVHD-W0JRxFcN_jYg3kCcPc6FrcOD1nbJPX3OMqGeK1frxA>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 1 May 2026 09:58:30 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 3/4] firewire: core: refactor notification type determination
 after isoc resource management in cdev
Date: Fri,  1 May 2026 22:58:22 +0900
Message-ID: <20260501135823.241940-4-o-takashi@sakamocchi.jp>
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
X-Headers-End: 1wIoOA-0005iy-4S
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
X-Rspamd-Queue-Id: 3902F4ACF33
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
 drivers/firewire/core-cdev.c | 27 +++++++++++++++++----------
 1 file changed, 17 insertions(+), 10 deletions(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index 0d57b61ade12..4ce8754da93f 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -1390,20 +1390,27 @@ static void iso_resource_auto_work(struct work_struct *work)
 		}
 	}
 
-	if (todo == ISO_RES_AUTO_ALLOC && channel >= 0)
-		r->params.channels = 1ULL << channel;
-
-	if (todo == ISO_RES_AUTO_REALLOC && success)
-		goto out;
-
-	if (todo == ISO_RES_AUTO_ALLOC) {
-		e = r->e_alloc;
-		r->e_alloc = NULL;
-	} else {
+	if (todo == ISO_RES_AUTO_DEALLOC) {
 		free = true;
 		e = r->e_dealloc;
 		r->e_dealloc = NULL;
+	} else {
+		if (todo == ISO_RES_AUTO_REALLOC) {
+			if (success)
+				goto out;
+
+			// Notify the userspace client of the failure through a deallocation event.
+			e = r->e_dealloc;
+			r->e_dealloc = NULL;
+		} else {
+			if (channel >= 0)
+				r->params.channels = 1ULL << channel;
+
+			e = r->e_alloc;
+			r->e_alloc = NULL;
+		}
 	}
+
 	e->iso_resource.handle    = r->resource.handle;
 	e->iso_resource.channel   = channel;
 	e->iso_resource.bandwidth = bandwidth;
-- 
2.53.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
