Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AB6TOvDQ8WlrkgEAu9opvQ
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	for <lists+linux1394-devel@lfdr.de>; Wed, 29 Apr 2026 11:35:44 +0200
X-Original-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 890D449206F
	for <lists+linux1394-devel@lfdr.de>; Wed, 29 Apr 2026 11:35:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6WButRMJEcSf2CyPznq/4Cbb+yCuK02GZn8qluZi6Cg=; b=Z7yBxRxT8JPZjIZG9id8wpabfG
	1o3jfmEduBd9oTWRS23exCgaDbgG2JJj+4ODKVFjYBtXSZcUCQjGw7vDrlHgxrZvbW5DLx5sKLMZc
	T5AYHdwkSAzNYhC7aJMpMX7ibWS4IGpsOSXpMoBOVneMNCo7fWd3UHxvUF4F7/ieUBbE=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1wI1KU-0004Td-IW;
	Wed, 29 Apr 2026 09:35:38 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1wI1K1-0004Si-Tg
 for linux1394-devel@lists.sourceforge.net;
 Wed, 29 Apr 2026 09:35:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=N62dO2IkgYEvWkqr+r1yC3Y9QmJvm4a9il4UNRzq2B4=; b=T78yWuIvI2rdD+Ar91ogK3rI5/
 hKxX4YMO848DDKCFYkg/DSKRDggfYDlKZCGjj4StaYm9bTv2q9ongB3E3PHdFrkCSjEXE66kGck+F
 DbjpmBqIIBdSsWwYSH+lqjgCrmEOg/2o74eOXv5alzDlpOyU8fhoyTNHhctUJiuMvlb4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=N62dO2IkgYEvWkqr+r1yC3Y9QmJvm4a9il4UNRzq2B4=; b=iU1lqRZR3sAZcQ1gRa4ia+7Kh2
 CmGL5FpPuepp8F00AB0VLawg7kAZzIHwd9KplvzimqpD4+Oi+6g4z/bMCNf5epD1+xPBt4YsXWK7S
 csUaC2n7A8cVQ1z6lb2G6yjsIYUjlyisi7gLp5GVXPBzMPlAp31Z3OmCjl3maZMIVHH0=;
Received: from fhigh-a6-smtp.messagingengine.com ([103.168.172.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wI1K1-0008M2-BI for linux1394-devel@lists.sourceforge.net;
 Wed, 29 Apr 2026 09:35:09 +0000
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
 by mailfhigh.phl.internal (Postfix) with ESMTP id AA95F140002E;
 Wed, 29 Apr 2026 05:34:58 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
 by phl-compute-02.internal (MEProxy); Wed, 29 Apr 2026 05:34:58 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1777455298; x=
 1777541698; bh=N62dO2IkgYEvWkqr+r1yC3Y9QmJvm4a9il4UNRzq2B4=; b=K
 FgC2zkr5FDVxekXfRn1T2FiLPjl1yE4I63YwZhJJEZC35RYH5Mq7UL7CK+LXito6
 VDiGq/JPfrAF2znQVvAxvAYIQ28m7KlrIL33vt7VlfH9VF6ZtrFcl1nfple0tajA
 uPpTK8GPirO5ptOswWzm32r4OfdBZJtjnT3zUb6qmHPHXsnIXjeoq3S/GHDLExYO
 BUVPoUqvuYYduhUgjuvV7MvPYOPIapY2SZJ2dTdA2WhtovgluIZOnosLRBFJHexy
 ClrcUSoZ0iquL7pS/2ij/ejyjrGZKeeK63nZk/pCYFibo+8xBRGjtaTdk6NqJlD/
 6ew9tbf+Dcw8DEy6hg7sQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm2; t=1777455298; x=1777541698; bh=N
 62dO2IkgYEvWkqr+r1yC3Y9QmJvm4a9il4UNRzq2B4=; b=EbUjQY8GfG2sMLEM7
 YeMC1ArU9pWWspieCR1aK7JywH3iCVyuatxSEXCsIOyYRcYNIVTSfoxfc5fFw7hb
 K/JiC1h0GWIGztjAv2D4EZLmZU345pRIhmtnJcn+QrtXhWQY+unvAIuajk50rEg/
 izVrJZLGT/EkjmJDuCaskNjYVoFdy0POA4ATt+QA3bpG7Dmnld0kciquJnZS9J84
 w9T84f3NR2wkYD2A653YKEuplAuHAN19R3BfAefnomIXK25+alWGwFTEK39QqeQc
 hBq8rbwzOTPAT7Mxg6WQca38zOzRTWQtrWFeuyvTctMgI+2ZIgcwjUhxYuNc5Z/G
 BlHQA==
X-ME-Sender: <xms:wtDxaeHUSiM7xsy2mf6qwrCLkDqVv7Al15jWmik2pMF-kB-SnnXDKw>
 <xme:wtDxadLXqnhJdmhYhSXMmDGA1qNYNXwMnCUKhTORqB-QNnd4l1ETa9BKxa79W4uBR
 CvBI-ozXK2JMDIb7h_aa-Css2U-H6X83_5HK2ayfDiifMD9MRqpo94>
X-ME-Received: <xmr:wtDxaSnGfZ2nr4m_ouKbLCbYdrr-Hcn5Zdd0pHzQg8fU4avZQ0BYdOKumL0fddlEFTTMUMvlmVbklNSNprzpglblO-7qRpHkSHLg8pLtrd0A5Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdekgedtlecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekredtre
 dttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejuedvgf
 duudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgvrhfu
 ihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkh
 grmhhotggthhhirdhjphdpnhgspghrtghpthhtohepgedpmhhouggvpehsmhhtphhouhht
 pdhrtghpthhtoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtg
 gvfhhorhhgvgdrnhgvthdprhgtphhtthhopehshhhurghnghhpvghnghdrkhgvrhhnvghl
 sehgmhgrihhlrdgtohhmpdhrtghpthhtohepughinhhgihhsohdrkhgvrhhnvghlsehgmh
 grihhlrdgtohhmpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgv
 rhhnvghlrdhorhhg
X-ME-Proxy: <xmx:wtDxaVSD-JhUQtq8IRbD0QWVRcAdMM2AhVerTfu2CCj0nuaY02vGsQ>
 <xmx:wtDxaUJ2KNl_Cb4h_ktnSZUbfEviCOEjdZJKI3CPgilq1S1tOY1HnA>
 <xmx:wtDxabCMfiz91UNgDvNdUDvzp6aeuM_Er0wamcz0N8FS2S0OW0lvRQ>
 <xmx:wtDxadCZmplbWDpW1lVOPEigFv1fYurHqXdEhTidXCQgIMrPl4cJJQ>
 <xmx:wtDxaWIAWU1NipVugBFQMq1V6vCTIvC87CfNpIXMl1zSPT0jhNk4vB7m>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 29 Apr 2026 05:34:57 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 3/7] firewire: core: code refactoring for helper function to
 fill iso_resource parameters
Date: Wed, 29 Apr 2026 18:34:44 +0900
Message-ID: <20260429093449.160545-4-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260429093449.160545-1-o-takashi@sakamocchi.jp>
References: <20260429093449.160545-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  This change is a preparation for future changes. The added
 helper function will be reused in the changes to fill iso_resource parameters
 according to the users' request. Signed-off-by: Takashi Sakamoto
 <o-takashi@sakamocchi.jp>
 --- drivers/firewire/core-cdev.c | 45 ++++++++++++++++++++++++ 1 file changed, 
 30 insertions(+), 15 deletions(-) 
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
X-Headers-End: 1wI1K1-0008M2-BI
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
Cc: dingiso.kernel@gmail.com, linux-kernel@vger.kernel.org,
 shuangpeng.kernel@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net
X-Rspamd-Queue-Id: 890D449206F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[sakamocchi.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_MIXED(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,sakamocchi.jp:s=fm2,messagingengine.com:s=fm2];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,sakamocchi.jp:-,messagingengine.com:-];
	RCPT_COUNT_THREE(0.00)[4];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[o-takashi@sakamocchi.jp,linux1394-devel-bounces@lists.sourceforge.net];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[linux1394-devel];
	NEURAL_HAM(-0.00)[-0.994];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sakamocchi.jp:mid,sakamocchi.jp:email,lists.sourceforge.net:helo,lists.sourceforge.net:dkim,lists.sourceforge.net:rdns]

This change is a preparation for future changes. The added helper function
will be reused in the changes to fill iso_resource parameters according to
the users' request.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-cdev.c | 45 ++++++++++++++++++++++++------------
 1 file changed, 30 insertions(+), 15 deletions(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index 8391c7efab2c..effa03739679 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -128,6 +128,12 @@ struct descriptor_resource {
 	u32 data[];
 };
 
+struct iso_resource_params {
+	int generation;
+	u64 channels;
+	s32 bandwidth;
+};
+
 struct iso_resource {
 	struct client_resource resource;
 	struct client *client;
@@ -135,9 +141,7 @@ struct iso_resource {
 	struct delayed_work work;
 	enum {ISO_RES_ALLOC, ISO_RES_REALLOC, ISO_RES_DEALLOC,
 	      ISO_RES_ALLOC_ONCE, ISO_RES_DEALLOC_ONCE,} todo;
-	int generation;
-	u64 channels;
-	s32 bandwidth;
+	struct iso_resource_params params;
 	struct iso_resource_event *e_alloc, *e_dealloc;
 };
 
@@ -1290,6 +1294,20 @@ static int ioctl_get_cycle_timer(struct client *client, union ioctl_arg *arg)
 	return 0;
 }
 
+static int fill_iso_resource_params(struct iso_resource_params *params,
+				    struct fw_cdev_allocate_iso_resource *request)
+{
+	if ((request->channels == 0 && request->bandwidth == 0) ||
+	    request->bandwidth > BANDWIDTH_AVAILABLE_INITIAL)
+		return -EINVAL;
+
+	params->generation = -1;
+	params->channels = request->channels;
+	params->bandwidth = request->bandwidth;
+
+	return 0;
+}
+
 static void iso_resource_work(struct work_struct *work)
 {
 	struct iso_resource_event *e;
@@ -1310,21 +1328,21 @@ static void iso_resource_work(struct work_struct *work)
 		} else {
 			// We could be called twice within the same generation.
 			skip = todo == ISO_RES_REALLOC &&
-			       r->generation == generation;
+			       r->params.generation == generation;
 		}
 		free = todo == ISO_RES_DEALLOC ||
 		       todo == ISO_RES_ALLOC_ONCE ||
 		       todo == ISO_RES_DEALLOC_ONCE;
-		r->generation = generation;
+		r->params.generation = generation;
 	}
 
 	if (skip)
 		goto out;
 
-	bandwidth = r->bandwidth;
+	bandwidth = r->params.bandwidth;
 
 	fw_iso_resource_manage(client->device->card, generation,
-			r->channels, &channel, &bandwidth,
+			r->params.channels, &channel, &bandwidth,
 			todo == ISO_RES_ALLOC ||
 			todo == ISO_RES_REALLOC ||
 			todo == ISO_RES_ALLOC_ONCE);
@@ -1355,7 +1373,7 @@ static void iso_resource_work(struct work_struct *work)
 	}
 
 	if (todo == ISO_RES_ALLOC && channel >= 0)
-		r->channels = 1ULL << channel;
+		r->params.channels = 1ULL << channel;
 
 	if (todo == ISO_RES_REALLOC && success)
 		goto out;
@@ -1402,10 +1420,6 @@ static int init_iso_resource(struct client *client,
 	struct iso_resource *r;
 	int ret;
 
-	if ((request->channels == 0 && request->bandwidth == 0) ||
-	    request->bandwidth > BANDWIDTH_AVAILABLE_INITIAL)
-		return -EINVAL;
-
 	r = kmalloc_obj(*r);
 	e1 = kmalloc_obj(*e1);
 	e2 = kmalloc_obj(*e2);
@@ -1414,12 +1428,13 @@ static int init_iso_resource(struct client *client,
 		goto fail;
 	}
 
+	ret = fill_iso_resource_params(&r->params, request);
+	if (ret < 0)
+		goto fail;
+
 	INIT_DELAYED_WORK(&r->work, iso_resource_work);
 	r->client	= client;
 	r->todo		= todo;
-	r->generation	= -1;
-	r->channels	= request->channels;
-	r->bandwidth	= request->bandwidth;
 	r->e_alloc	= e1;
 	r->e_dealloc	= e2;
 
-- 
2.53.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
