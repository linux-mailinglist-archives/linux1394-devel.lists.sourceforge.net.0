Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B2294779F
	for <lists+linux1394-devel@lfdr.de>; Mon,  5 Aug 2024 10:54:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1satUB-0006zP-Hn;
	Mon, 05 Aug 2024 08:54:35 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1satU9-0006yu-V7
 for linux1394-devel@lists.sourceforge.net;
 Mon, 05 Aug 2024 08:54:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=riXT/ZPaI3yITLXofYuDWzvYYTW64WraJqRL8dIk1u8=; b=C3SioTEsTlC5ZhkfxjgR2DJnnO
 LhdwvYH3qsfcXE9ob+VSerZp2szJ3q4HI1NnJimO7pjtNYOex1SKpB3KhL8/czZsynuB0pm/Bqbp3
 1GIvjd/cNQH7NcQwojQv9g+zAyba9m0eN0j1b1arKBExdHkxVzlBUlagRIKnnHAzOYO4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=riXT/ZPaI3yITLXofYuDWzvYYTW64WraJqRL8dIk1u8=; b=jjnK6YdCmajXDSmpCFYshWvYi1
 PfRHOVuKJ6VpkrKGHfUps22PPSsNsKBxrEpti1dHTipA80IZlbUo5J1CFHla67J+r13tECwboOUa2
 M2UblSZDvEv7I0XWjDyicBUPm92UzNhtinxiTb3YsQTyCPc+7xziZKh5gteyZ14xbo7c=;
Received: from fhigh4-smtp.messagingengine.com ([103.168.172.155])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1satU9-0002qp-90 for linux1394-devel@lists.sourceforge.net;
 Mon, 05 Aug 2024 08:54:33 +0000
Received: from compute7.internal (compute7.nyi.internal [10.202.2.48])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id B07D01151CA4;
 Mon,  5 Aug 2024 04:54:22 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute7.internal (MEProxy); Mon, 05 Aug 2024 04:54:22 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1722848062; x=
 1722934462; bh=riXT/ZPaI3yITLXofYuDWzvYYTW64WraJqRL8dIk1u8=; b=i
 qKRgPbw0F/BGTICG2Ydurr0ShavqcHfeJhR7ZjMxVKBf6gw+QoFrRqfhS7CrDdYE
 2H4tq3lZYvfKFgylGT2OwE38yKynX9Q69O27YS/zmu3CK/LzgJubF1j/9MKSwOIM
 MCck80POWvGWTNcXmjGxEqx9OdwyMFuKLMsr1lskIWQSEtQdE+HumKPllnkD2U1C
 tr45Q9l/zNMhXb/krF3mFzAMBdWqM2c86Sjg8a+byxtnMf9eH7rjWPVuN6ltFgDA
 OUGoWcF3QjhWal3tJRvmYZgUCyFepqy3ftR4V8QYMIFyWxGlLYCXryFbnOlec6br
 xrc1yo7dSgXWzIpZRFXWQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1722848062; x=
 1722934462; bh=riXT/ZPaI3yITLXofYuDWzvYYTW64WraJqRL8dIk1u8=; b=M
 2UwNJvpWAS6JyvrfRUSaNDXXT7sWnp8tL2ndCoLvlURB32kJd+5DfJEmMZTd1/AZ
 zhTUDb0ku4+LEK342LbFWY9ImyYKnfjoPjPFMefjKDuvgXJu5K8yViy68LKQeINa
 ttUfy08jspUSiYjRCPAk0ax667aiRPyhnZGmzpcL95ohXYiNjq20s2l8k6fOSRdg
 7rc8bVVVtVotfyXc2tEKOvK6M9PLKBcVxly5FFrNkkSEpIrOGFzWxswEcgWQBUXn
 YSYb1jNTbFOiuQrPMpnGEI5hCWx/krGObHSwPKdoxl/0Cyi3mRm2Q1//iOTQYA6c
 a17wm5qn8L3TTWmiZbYMQ==
X-ME-Sender: <xms:PpOwZvpKo-85IZv1ecGcopExfG0oVD4xxeEOq5rQ5N3_4EVQnEHzug>
 <xme:PpOwZpqkUfDsHj922ubSazcQiWYhe3CCnEpTJBEa-qxWmTcaI6MDMkxkI2gBuHhs8
 jF8fSIwspLJhqxrt28>
X-ME-Received: <xmr:PpOwZsPJ_e2mzGZmf0N0EGzKZrt7cTkFJxR3nABk2AEiS37e70O9kII_77QEbJTnRv_lDj_O1UlUomFSZdRvc0alJdQt3F9BoDnhwsM5Bg8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrkeeigddutdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejue
 dvgfduudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtoheptd
X-ME-Proxy: <xmx:PpOwZi6G-7YD_CpuvkQw5Sc3Lvp6OzxATgnYR6K9qT_TCtVz_HsrnA>
 <xmx:PpOwZu45Ubbu386tRSSvGNif5pMLvTLq2sFF8ASJf2CsUZxj0eyb0Q>
 <xmx:PpOwZqga8ObosvEraYX_NYLfNCRI9tuPxuvMhTGG6vEF1W49x7N9mg>
 <xmx:PpOwZg7bq8HAMqlL13TqYHXSugrNz8FHgflBxJdn0iqdToLGgHapgQ>
 <xmx:PpOwZuFWpOGr3Chu4_ujtAS9WBjh6SDO1tn5EVwoPv1Me0DvEKPSgUxU>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 5 Aug 2024 04:54:21 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH v2 08/17] firewire: core: use guard macro to disable local IRQ
Date: Mon,  5 Aug 2024 17:53:59 +0900
Message-ID: <20240805085408.251763-9-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240805085408.251763-1-o-takashi@sakamocchi.jp>
References: <20240805085408.251763-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The core function provides an operation for userspace
 application
 to retrieve current value of CYCLE_TIMER register with several types of system
 time. In the operation, local interrupt is disables so [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.155 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.155 listed in bl.score.senderscore.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [103.168.172.155 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1satU9-0002qp-90
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

The core function provides an operation for userspace application to
retrieve current value of CYCLE_TIMER register with several types of
system time. In the operation, local interrupt is disables so that the
access of the register and ktime are done atomically.

This commit uses guard macro to disable/enable local interrupts.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-cdev.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index c3baf688bb70..90e9dfed8681 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -1263,29 +1263,27 @@ static int ioctl_get_cycle_timer2(struct client *client, union ioctl_arg *arg)
 	struct fw_card *card = client->device->card;
 	struct timespec64 ts = {0, 0};
 	u32 cycle_time = 0;
-	int ret = 0;
+	int ret;
 
-	local_irq_disable();
+	guard(irq)();
 
 	ret = fw_card_read_cycle_time(card, &cycle_time);
 	if (ret < 0)
-		goto end;
+		return ret;
 
 	switch (a->clk_id) {
 	case CLOCK_REALTIME:      ktime_get_real_ts64(&ts);	break;
 	case CLOCK_MONOTONIC:     ktime_get_ts64(&ts);		break;
 	case CLOCK_MONOTONIC_RAW: ktime_get_raw_ts64(&ts);	break;
 	default:
-		ret = -EINVAL;
+		return -EINVAL;
 	}
-end:
-	local_irq_enable();
 
 	a->tv_sec      = ts.tv_sec;
 	a->tv_nsec     = ts.tv_nsec;
 	a->cycle_timer = cycle_time;
 
-	return ret;
+	return 0;
 }
 
 static int ioctl_get_cycle_timer(struct client *client, union ioctl_arg *arg)
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
