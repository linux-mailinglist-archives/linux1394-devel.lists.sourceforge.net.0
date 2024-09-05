Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 39C9B96D9DF
	for <lists+linux1394-devel@lfdr.de>; Thu,  5 Sep 2024 15:10:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1smCG5-0003IX-UG;
	Thu, 05 Sep 2024 13:10:46 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1smCG5-0003IN-8a
 for linux1394-devel@lists.sourceforge.net;
 Thu, 05 Sep 2024 13:10:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mECBbq8SLaUTywVVUUZTVtpP3ufj6mxHVK9noi6AziY=; b=ba4MAIynWu29+hLhYtZ4Ua06VN
 HaF3vbxdmtXYpeD8ufYltzj7J+y7XDbsfjMfB8CVitcPSJCnETvrtl6sna00Pq3dChxQGW0MbiXA0
 ObvC/2Is2Sq5fa7baPP0Y0vBUhqr0k5zaOL6jzZoa/IiYB/HCfPy6GuKCu80GwVj1lyw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=mECBbq8SLaUTywVVUUZTVtpP3ufj6mxHVK9noi6AziY=; b=R
 ThYNus188WS9FKCfp0iNDHC5vKDIZDIv3rt6ICgXvHpkWQsAlsTK+KT+B7Kahg4DR0Z2pJIe7e8NO
 0Hcw3++CpzJiVbJwZT2j1yNuUPIzK8s6qGJTFMQdwpgOz0dpCn+1dhi6I3i/FI0Li/+RA7dTVOqn5
 yyyO6lGTfFRgj6eE=;
Received: from fhigh7-smtp.messagingengine.com ([103.168.172.158])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1smCG5-0001X0-0e for linux1394-devel@lists.sourceforge.net;
 Thu, 05 Sep 2024 13:10:45 +0000
Received: from phl-compute-01.internal (phl-compute-01.phl.internal
 [10.202.2.41])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 648241140273;
 Thu,  5 Sep 2024 09:10:34 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-01.internal (MEProxy); Thu, 05 Sep 2024 09:10:34 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm1; t=1725541834; x=1725628234; bh=mECBbq8SLa
 UTywVVUUZTVtpP3ufj6mxHVK9noi6AziY=; b=ClwoRogjF6MhifPzTJuH6QRObr
 pVZRgyFEDvmxdeCgRvS430y5nkwSb/0dmAi3+10QQ+i1kjBTSMoTVZKSvue28cLa
 xHLISwr4MmskNZWPbH5uo2gfBCi9w/SzJIF+dfFtEn6l6DSLgNXJXBzcaTu6msNf
 szhxvhxxcpzxa0iiZvWwKX2fnMEql4mjUpDxF6GkvBD1dE37Z1xW6KdzSdVWJOPA
 pmUvWRsLztFwN7/dfa4VE6Th9DzNJ/ya4ES1rIjfqf+tKV9tXp3zLSLkvoKuhLdE
 I++hMCGoYArV/dY/FupYouExujEZWSduHa4BNhbsvamTuqiKTuYO85r341WQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; t=1725541834; x=1725628234; bh=mECBbq8SLaUTywVVUUZTVtpP3ufj
 6mxHVK9noi6AziY=; b=g4/XoqNWetmRsYwaQPURTTf9stoOuQLU98AE5eZzfXvR
 yv0gpmE5HIhMk05mD8j3iX8VgPaDdtunxyuRNXnJC1RaMdcMw9EkKhrmxCbngtBD
 aDIQ+HC9vpX5yl5A7RbXTI5AmxyTgIz5RoY7e/XIjY/2RGX6kyalZLAPBuFKsplX
 lmA02ZhognxHe3ZEwIv7UC+mzcHSlyi7uti3ebTtQnBRcnSIomqqUizyVqmkZNyr
 mDSADiYzLovI0tWm2/ztU/3oMCZ7PVGt0Xjphv0RscczbPfpilbCM58O7TFzzON6
 er2wzT1yH0C6iSmLm8cxSmYLtAE9G26JtnMtWm5CIw==
X-ME-Sender: <xms:yq3ZZt2-SL7e6mBTz6xiQl6cjgzxRsHveceP_lUmKw3matVw0277PA>
 <xme:yq3ZZkHuJUJqeR7JP7PwInbPxvjo6W2iuTRDJ-4gw265p2mPE1F8jhocNA6FVR5vX
 H21GSqCTRW5b1h_nHM>
X-ME-Received: <xmr:yq3ZZt4vgTcWa6iB_0vYemk0buDBFwO2daKSvPtEg2PM2XnkRvv4BxSZCZp9abB8wOEZZQBFThydVqh2SuQ_S8vNDyVUWJ-GcvKwRhwlVd2w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudehledgieduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
 htshculddquddttddmnecujfgurhephffvvefufffkofgggfestdekredtredttdenucfh
 rhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkh
 grmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepffdvueelffevkeduhfetjedu
 ffeghfettdfguedtgfdvgfeufeduheevheevkeeknecuvehluhhsthgvrhfuihiivgeptd
 enucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggt
 hhhirdhjphdpnhgspghrtghpthhtohepfedpmhhouggvpehsmhhtphhouhhtpdhrtghpth
 htoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtggvfhhorhhg
 vgdrnhgvthdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghrrdhkvghrnh
 gvlhdrohhrghdprhgtphhtthhopehtihifrghisehsuhhsvgdruggv
X-ME-Proxy: <xmx:yq3ZZq1Bjpw5RBC46rK_Rmoc8UbnsGxBSEt5cY_uL9UwPT1N9IKMxg>
 <xmx:yq3ZZgEpU0Vyb13z1kafJlIVWpS8-DH-vsOID9fc8ECO9SsX0ce2Sw>
 <xmx:yq3ZZr_3EWegdmX4t7zyfqBTnNpBYm4ZXR5rNvrsfDzloa1Rh68xGQ>
 <xmx:yq3ZZtmn7X_h4t_MkYA7KGCuzwqeBI1aruBfq-Jf1FVRzkt4FsQJUQ>
 <xmx:yq3ZZkD2c8cIDDT-irj8z8T9g7J2Z_mBZeXlxBpOUDNkn5j_buI7CsWO>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 5 Sep 2024 09:10:32 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH] firewire: core: use WARN_ON_ONCE() to avoid superfluous dumps
Date: Thu,  5 Sep 2024 22:10:29 +0900
Message-ID: <20240905131029.6433-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  It is enough to notify programming mistakes to programmers
 just once. Suggested-by: Takashi Iwai <tiwai@suse.de> Signed-off-by: Takashi
 Sakamoto <o-takashi@sakamocchi.jp> --- drivers/firewire/core-iso.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-) 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.158 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1smCG5-0001X0-0e
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
Cc: Takashi Iwai <tiwai@suse.de>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

It is enough to notify programming mistakes to programmers just once.

Suggested-by: Takashi Iwai <tiwai@suse.de>
Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-iso.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/firewire/core-iso.c b/drivers/firewire/core-iso.c
index af76fa1823f1..a249974a0f87 100644
--- a/drivers/firewire/core-iso.c
+++ b/drivers/firewire/core-iso.c
@@ -220,7 +220,7 @@ int fw_iso_context_flush_completions(struct fw_iso_context *ctx)
 	might_sleep();
 
 	// Avoid dead lock due to programming mistake.
-	if (WARN_ON(current_work() == &ctx->work))
+	if (WARN_ON_ONCE(current_work() == &ctx->work))
 		return 0;
 
 	disable_work_sync(&ctx->work);
@@ -244,7 +244,7 @@ int fw_iso_context_stop(struct fw_iso_context *ctx)
 	might_sleep();
 
 	// Avoid dead lock due to programming mistake.
-	if (WARN_ON(current_work() == &ctx->work))
+	if (WARN_ON_ONCE(current_work() == &ctx->work))
 		return 0;
 
 	err = ctx->card->driver->stop_iso(ctx);
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
