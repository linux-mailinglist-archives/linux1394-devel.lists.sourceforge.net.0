Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 845D396BD63
	for <lists+linux1394-devel@lfdr.de>; Wed,  4 Sep 2024 14:58:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1slpaq-0003Ih-Bh;
	Wed, 04 Sep 2024 12:58:39 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1slpap-0003IZ-5x
 for linux1394-devel@lists.sourceforge.net;
 Wed, 04 Sep 2024 12:58:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/t1GxqdzaPNcXcCFcGW0j9sbx/Vl0HCFeyHG4omIRHc=; b=EAElpfgqeTUVldBqX+LJmgC4uH
 FYh5WlKEwm3gby23qqI4zK46OYgjCdqRAnoszWO1d5TnKzUZthxNtKp27ms0BrKQg/CQhyHnxeIis
 6Db7X60weI8mGwao9hrFnRmpMhAe8NKS6Kwizoz0AYbttneBgl0yvalS9miiJW/DjP1o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/t1GxqdzaPNcXcCFcGW0j9sbx/Vl0HCFeyHG4omIRHc=; b=hZsqGs3EhH7zKuK5ZL+qs1iMbl
 8ZSkdt91MUKMDC8ehgUdHDypOAhy2OCDUgbGLc3OkfzTBT84eGuNaNQxn4Pdza+eM6aNQPRAWzSCv
 tOHiCvzbee2ZkOB6XUa5qZvrOrT12DD3gd44uRdImNeFYklFIO0fd3Pn/fGoxxXlXCLI=;
Received: from fhigh8-smtp.messagingengine.com ([103.168.172.159])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1slpan-0000Ru-Tm for linux1394-devel@lists.sourceforge.net;
 Wed, 04 Sep 2024 12:58:38 +0000
Received: from phl-compute-03.internal (phl-compute-03.phl.internal
 [10.202.2.43])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 6001C1140258
 for <linux1394-devel@lists.sourceforge.net>;
 Wed,  4 Sep 2024 08:58:32 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-03.internal (MEProxy); Wed, 04 Sep 2024 08:58:32 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1725454712; x=
 1725541112; bh=/t1GxqdzaPNcXcCFcGW0j9sbx/Vl0HCFeyHG4omIRHc=; b=Z
 zP7i8zd2flwkmd6MewzsmtHA0K3ycGJGXz8YCBDt75oSYY0Hf9aXpdI6UbL1roqr
 dbl8m2qIpFOWF45Ayroz/QeOoSOtxdNOnmHovDyYzBhk5gvsfNCr/0Bp6mVy/jm8
 GfX6YjCgeNW1YKB0mhEOBuaEXnKq+KLDbm8Ols9dp1lI8w0igY2CatNIHHE5+zJF
 VY4CpWGUP7EGc/ugIpkFHwpJTDo2yOD3+BmFi0ptQyfzel17iYzSLdCtrdeX4Ah3
 TE5R4lMFF+FS69q5iIK1yyW4KFFL4lskTwUcqxlqtElaJElyJbWzOSz0Aa+7T9IA
 33r9uGUzT9AwRlQ1/RucA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:date:feedback-id:feedback-id:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm1; t=1725454712; x=1725541112; bh=/t1GxqdzaPNcX
 cCFcGW0j9sbx/Vl0HCFeyHG4omIRHc=; b=mWTT0SYNwgu/j7wPhFMN1dKMrQQgi
 M9nQ3oLYEkVif3tKYUuptz/e1XCbh/TNBaN8tDxKpHCafaxaDiBvxfQ8aTRgCYSW
 NS6/iyPj3mO6yIvh7cneVj0zjpPbDIRxPksjlPzKZRxVbLpgRMRpbpp15ePmCjdP
 tR9H/kJP6Vgjky6f6ffgcBsmslVZXZA8beeFaLBAyZuuXJemk54ac1KM+rVI2Xuo
 QMSaa+A11eK2x8qfghLCmmo/Q8WXsiE2dhPB5Jlqo9qRH/tpmo6L6QaI5h9j61Uz
 uuDA9Ti9dxEGYxvRWznQvoykaNngSnMui0v2HIrnDIUl8P0/13kcwN4ww==
X-ME-Sender: <xms:eFnYZifWAJeOg73DmcFLGmFLR-TrsoLj8lXu5UThRvhc_t89BTQlzw>
 <xme:eFnYZsNUrJHZ-TI5WZ11wYQGovA_I_Up1R6iHk5goDgrr902QVKbLl_f3EOh267Qu
 ClqLfdF9sBF6AzWTtY>
X-ME-Received: <xmr:eFnYZjihqw_McCGzYyJk2Q6KjluWYaBeQsSxwvl95hpLc_beMBREeJLpXtlUbht5ffxHWA4TvtOQunQuQmnpVij-v0tg6mJk2gnsOTwKRf4GAg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudehjedgheekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvffuff
 fkofgjfhgggfestdekredtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhho
 thhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrth
 htvghrnhepveefffefkeetgfevgeefleehfffhueejtdejveethfekveektdejjedvtdej
 hfejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepoh
 dqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtohepuddp
 mhhouggvpehsmhhtphhouhhtpdhrtghpthhtoheplhhinhhugidufeelgedquggvvhgvlh
 eslhhishhtshdrshhouhhrtggvfhhorhhgvgdrnhgvth
X-ME-Proxy: <xmx:eFnYZv9gb1MXm0fxd7grvcm03W4vNpgDmZF38kitptPI_tvuJCwrQg>
 <xmx:eFnYZusq6WCnpErQf4xgESkSpSAHhP1b1V6TrDpIJDBxez_xzn97_w>
 <xmx:eFnYZmEEYZtrUe0CdJKJUzoXA64yWyN2piIDySdy9HFF-EzDXgcIAQ>
 <xmx:eFnYZtOUR-y6qmnrbez8VPGMWglFdf2M3hmveU0kZ8ka0KACmgcEhg>
 <xmx:eFnYZjXty2-l0eX_n5r1k4nfSLvNqgnPxLA2BHMaHl6BNdZiyNLFBya7>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <linux1394-devel@lists.sourceforge.net>; Wed,
 4 Sep 2024 08:58:31 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 4/5] firewire: core: non-atomic memory allocation for
 isochronous event to user client
Date: Wed,  4 Sep 2024 21:58:23 +0900
Message-ID: <20240904125824.462786-5-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240904125824.462786-1-o-takashi@sakamocchi.jp>
References: <20240904125824.462786-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In the former commits, the callback of isochronous context
 runs on work process, thus no need to use atomic memory allocation. This
 commit replaces GFP_ATOMIC with GCP_KERNEL in the callback for user client.
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.159 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1slpan-0000Ru-Tm
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

In the former commits, the callback of isochronous context runs on work
process, thus no need to use atomic memory allocation.

This commit replaces GFP_ATOMIC with GCP_KERNEL in the callback for user
client.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-cdev.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index 3ea220d96c31..518eaa073b2b 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -982,7 +982,7 @@ static void iso_callback(struct fw_iso_context *context, u32 cycle,
 	struct client *client = data;
 	struct iso_interrupt_event *e;
 
-	e = kmalloc(sizeof(*e) + header_length, GFP_ATOMIC);
+	e = kmalloc(sizeof(*e) + header_length, GFP_KERNEL);
 	if (e == NULL)
 		return;
 
@@ -1001,7 +1001,7 @@ static void iso_mc_callback(struct fw_iso_context *context,
 	struct client *client = data;
 	struct iso_interrupt_mc_event *e;
 
-	e = kmalloc(sizeof(*e), GFP_ATOMIC);
+	e = kmalloc(sizeof(*e), GFP_KERNEL);
 	if (e == NULL)
 		return;
 
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
