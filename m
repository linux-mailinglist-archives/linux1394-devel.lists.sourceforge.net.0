Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 56A7A94779C
	for <lists+linux1394-devel@lfdr.de>; Mon,  5 Aug 2024 10:54:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1satUA-0006z2-P6;
	Mon, 05 Aug 2024 08:54:34 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1satU8-0006yZ-0x
 for linux1394-devel@lists.sourceforge.net;
 Mon, 05 Aug 2024 08:54:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=o9vF7u9NUcybsaqu9wuw/REBguJhypKXIzx9986qq3g=; b=Yz7oevK5yEaBKN9TELtc5wUbV9
 +fh0060E9x3ouv4IEHb03g5x2/RmdSSS1s8MASc9k/0Hr1wvugmx2MTMA0d8Af2sgojD7g3yj9SKQ
 IpBMgAjLNPsaS7NPPKl8eRTkPYGLbI2v5pZkofzEWSbloi/GyFYdeFgov/sYMriRb24g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=o9vF7u9NUcybsaqu9wuw/REBguJhypKXIzx9986qq3g=; b=cDYRc5mBXR7ZKSehs5CLR1gXgQ
 Jd5+HN0Pr3I6OQadN62fHow9C9GIPRnfWXQUqkWSoKVyl9x7O8BgJd22tPRJ8jpfJk5BBLzZyXdEG
 iPZqKFqBVJCuMBB2rlBOjN0dLRDW82lKj4G2AfxnifruEbIRWyU1tUDyDAZIwINzHNSU=;
Received: from fhigh4-smtp.messagingengine.com ([103.168.172.155])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1satU1-0002pN-7g for linux1394-devel@lists.sourceforge.net;
 Mon, 05 Aug 2024 08:54:25 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id A76671151C9F;
 Mon,  5 Aug 2024 04:54:14 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute1.internal (MEProxy); Mon, 05 Aug 2024 04:54:14 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1722848054; x=
 1722934454; bh=o9vF7u9NUcybsaqu9wuw/REBguJhypKXIzx9986qq3g=; b=0
 ZnoUAWcDrufjuLmbIgf26SSnB7pufxe1TDruZR/ybJtFEpNgQv+ET/qydg/a6ruc
 WGQ6m2dFz8CyjaDJZeWWWY3WYUjekT28PZLz5h/Ys0cR1W/ENyf0+IJUoom4r+wP
 J5pBSUjkPr4uWnEVESaALmYDX7Hdgnx+k7RuTF4i9U3FzlpdNfOR28DPt7TwKF8a
 w6/OitrJRQCT7fsDEU0xRiO6FqgiI1ikB9M+s+ChCPH4h1JNiIl1ltSzPdNuy1e2
 aJSShpqXyRsCl6NmDPU15uixf/FibiuXcJiF3h0AR+3hhkpnGH5//EKAMyZTe9dH
 o1AOz049c+jrPM3RsqJNg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1722848054; x=
 1722934454; bh=o9vF7u9NUcybsaqu9wuw/REBguJhypKXIzx9986qq3g=; b=V
 GTmbNPQufO/mBa1N3vctZHfkH96XmOFcRLmRooWHfPgPPDXoxwPmIdKJx8i3R4Ze
 SMl0Yy416lREBRVQzeOoMCePudfCEyTeyW7O5MmiGCJ9wtvdaRlMgM2KwwWlWf8H
 K/BcI89Mt35474kxpv9IoeBWn85eqd5rzeSXAvHkiWvXr9fILvNU7nWgfZQlUQAH
 NY/WVRvWTPnmPnknsYy1yuN9LlTlXNLYrlEEi/ctajs31zG4EFPwOPh9tZyjunvc
 KuUYz9NNdYWCKTZ6oCrQDVlSB4Ao55eb6DtveNvCZmvaNq5+9K0UrOQHH9B3CYni
 KOfjANQfiAI/4F5Db349w==
X-ME-Sender: <xms:NpOwZjP84OSOfJGxLpsTXSJLy9_rf7blX1yWkIQ6jRH8dSAuNAMm1A>
 <xme:NpOwZt9PW5fwG4InyYFm3Z89jqQJMJiRV4WpyC2wn68zgrbn7cnFTOZjK9KUu8uK_
 M_8CqZMIAIwqz2cVS4>
X-ME-Received: <xmr:NpOwZiS0l3ZM94PCAtVVRIaXRoZabJgHYJZ3WkJqiPQWIhKWNF725cpdZc-RNa_fJqqXiiA4FEqp6z7GNGYmZAI8qUFFsMmMSqJvg-nPraE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrkeeigddutdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejue
 dvgfduudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtoheptd
X-ME-Proxy: <xmx:NpOwZnt3g1jVINCR65uXQ8FFdSzFnkyIRF8mQiSm0ZFW9eaJjKDmYQ>
 <xmx:NpOwZrcl-thJUyH5knjLadmjK-uopekH4x3e4PcQ3TqpiEegn2d_gg>
 <xmx:NpOwZj0V_xdo0IAcLWVvcyQf8T3zxq2HNpRo6qpcVsTy17Olj0dNKg>
 <xmx:NpOwZn9qilGflrUKMsdasH0bGWPaf-hHpdSVp_F79KvaYUYSU8schA>
 <xmx:NpOwZsqS6S7npCAME9f37HypwpslI4wcoRCm7eMQkUK3Kx6He7WPFlAY>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 5 Aug 2024 04:54:13 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH v2 02/17] firewire: core: use guard macro to maintain the list
 of card
Date: Mon,  5 Aug 2024 17:53:53 +0900
Message-ID: <20240805085408.251763-3-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240805085408.251763-1-o-takashi@sakamocchi.jp>
References: <20240805085408.251763-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The core function maintains registered cards by list. The
 concurrent access to the list is protected by static mutex. This commit uses
 guard macro to maintain the mutex. Signed-off-by: Takashi Sakamoto
 <o-takashi@sakamocchi.jp>
 --- drivers/firewire/core-card.c | 44 +++++++++++++++ 1 file changed, 18
 insertions(+), 26 deletions(-) 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.155 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.155 listed in sa-trusted.bondedsender.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.155 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1satU1-0002pN-7g
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

The core function maintains registered cards by list. The concurrent
access to the list is protected by static mutex.

This commit uses guard macro to maintain the mutex.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-card.c | 44 +++++++++++++++---------------------
 1 file changed, 18 insertions(+), 26 deletions(-)

diff --git a/drivers/firewire/core-card.c b/drivers/firewire/core-card.c
index f8b99dd6cd82..79a5b19e9d18 100644
--- a/drivers/firewire/core-card.c
+++ b/drivers/firewire/core-card.c
@@ -168,7 +168,6 @@ static size_t required_space(struct fw_descriptor *desc)
 int fw_core_add_descriptor(struct fw_descriptor *desc)
 {
 	size_t i;
-	int ret;
 
 	/*
 	 * Check descriptor is valid; the length of all blocks in the
@@ -182,29 +181,25 @@ int fw_core_add_descriptor(struct fw_descriptor *desc)
 	if (i != desc->length)
 		return -EINVAL;
 
-	mutex_lock(&card_mutex);
+	guard(mutex)(&card_mutex);
 
-	if (config_rom_length + required_space(desc) > 256) {
-		ret = -EBUSY;
-	} else {
-		list_add_tail(&desc->link, &descriptor_list);
-		config_rom_length += required_space(desc);
-		descriptor_count++;
-		if (desc->immediate > 0)
-			descriptor_count++;
-		update_config_roms();
-		ret = 0;
-	}
+	if (config_rom_length + required_space(desc) > 256)
+		return -EBUSY;
 
-	mutex_unlock(&card_mutex);
+	list_add_tail(&desc->link, &descriptor_list);
+	config_rom_length += required_space(desc);
+	descriptor_count++;
+	if (desc->immediate > 0)
+		descriptor_count++;
+	update_config_roms();
 
-	return ret;
+	return 0;
 }
 EXPORT_SYMBOL(fw_core_add_descriptor);
 
 void fw_core_remove_descriptor(struct fw_descriptor *desc)
 {
-	mutex_lock(&card_mutex);
+	guard(mutex)(&card_mutex);
 
 	list_del(&desc->link);
 	config_rom_length -= required_space(desc);
@@ -212,8 +207,6 @@ void fw_core_remove_descriptor(struct fw_descriptor *desc)
 	if (desc->immediate > 0)
 		descriptor_count--;
 	update_config_roms();
-
-	mutex_unlock(&card_mutex);
 }
 EXPORT_SYMBOL(fw_core_remove_descriptor);
 
@@ -587,16 +580,16 @@ int fw_card_add(struct fw_card *card,
 	card->link_speed = link_speed;
 	card->guid = guid;
 
-	mutex_lock(&card_mutex);
+	guard(mutex)(&card_mutex);
 
 	generate_config_rom(card, tmp_config_rom);
 	ret = card->driver->enable(card, tmp_config_rom, config_rom_length);
-	if (ret == 0)
-		list_add_tail(&card->link, &card_list);
+	if (ret < 0)
+		return ret;
 
-	mutex_unlock(&card_mutex);
+	list_add_tail(&card->link, &card_list);
 
-	return ret;
+	return 0;
 }
 EXPORT_SYMBOL(fw_card_add);
 
@@ -720,9 +713,8 @@ void fw_core_remove_card(struct fw_card *card)
 				     PHY_LINK_ACTIVE | PHY_CONTENDER, 0);
 	fw_schedule_bus_reset(card, false, true);
 
-	mutex_lock(&card_mutex);
-	list_del_init(&card->link);
-	mutex_unlock(&card_mutex);
+	scoped_guard(mutex, &card_mutex)
+		list_del_init(&card->link);
 
 	/* Switch off most of the card driver interface. */
 	dummy_driver.free_iso_context	= card->driver->free_iso_context;
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
