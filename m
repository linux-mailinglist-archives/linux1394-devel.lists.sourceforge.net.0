Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A62F3946ECD
	for <lists+linux1394-devel@lfdr.de>; Sun,  4 Aug 2024 15:02:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1saaso-0006gP-JD;
	Sun, 04 Aug 2024 13:02:46 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1saasl-0006gD-N2
 for linux1394-devel@lists.sourceforge.net;
 Sun, 04 Aug 2024 13:02:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=o9vF7u9NUcybsaqu9wuw/REBguJhypKXIzx9986qq3g=; b=UpD32DRqGbgrD6k1eFYBNDQz1Q
 hzskqraGSP9Q9zZKEaCY96xnkn/roZcUvoW05q6DAWbaLCS3TpZa5CHY7dzw+f8IVmvzcU0gz5tPx
 RZ6F6YZRbswG88jF9Cumh0Y4K1xiw1dFzm9aYlADZaMl3D3vKzz238hNKg0cMsxlpIGk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=o9vF7u9NUcybsaqu9wuw/REBguJhypKXIzx9986qq3g=; b=O9sziaqelT2gmSykQx3MIyn8of
 KDFaiRm3Sru2kLJLbUVKNhHFPanjhbVA5wjOZKdygEQEGPoOzAuNkyCL6ObtyP0/i1omNdVl936KK
 iNtrrs5jqdqjGI3zxY1iEH8I5xq2CnA52/scA+8Sc+/YoY5dCWSFPrCkKVMLMgpN9efw=;
Received: from fhigh8-smtp.messagingengine.com ([103.168.172.159])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1saask-0001DY-TU for linux1394-devel@lists.sourceforge.net;
 Sun, 04 Aug 2024 13:02:43 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 5665B1147EEC;
 Sun,  4 Aug 2024 09:02:32 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Sun, 04 Aug 2024 09:02:32 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1722776552; x=
 1722862952; bh=o9vF7u9NUcybsaqu9wuw/REBguJhypKXIzx9986qq3g=; b=B
 orCRmevl0USxohGWZC6o+oUYLxDUBHC+U/w0EW+ZZTc+PGA4KD6cXRyrCK3xHFCj
 PoeD34bVBynRNpME3TZNlfyMe1X24oF1wuh4pgBLU8mYVdbh4fXpS2v2ug7auJqB
 wQeXtnuiLvnvUu4/nERA6LT8IDtXaBvnIXpp5+Y1UA08Nccel5gXwGHDgAiVU21y
 X+5qLRJv5S5OLlnoCNecvJ1kzcg04tKOwBbSRVL7hV6zNeZZ1KBag7jmYnWzRInw
 Wmq5WjY4OALxav0IZzWeuSBdbbH6mJd9RHQFouTNx5BYrjaibyArWmu7MKwLtxiK
 k8p5RCOZgYDRh17TLiOqw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1722776552; x=
 1722862952; bh=o9vF7u9NUcybsaqu9wuw/REBguJhypKXIzx9986qq3g=; b=o
 TceX0f7cxa1lc9Q7eNYtm/mUGHTDnyDBylI75xUvvXwm3/Wz6EowHxFBWQTC4ZB3
 0AWp93GavKUzNvLcv9DjJgYlUnnIYxku1L3jruziLeoJXPCjul564CU8mbJwaNHF
 ypPfRnNSlHnMZAbFBLQcGs7x1LQRbX94YQDeOwXnR2I4m4iV0Btbe/u3Zldwc0u4
 xyQPAOHYrW3HsXKaOLuZdn36KM8iH+/7YaiJiB6jcL4cpoA6X+2OcY7/VBOz/V/g
 eZpGnfMMW6svGyO3LhnSmxM+Ddj7q8h4nAM27Pd0U/K5COPxkm0mQLtgfz+RYVBo
 UQmL+ZW2L2UvtNXcVSapQ==
X-ME-Sender: <xms:6HuvZjNJXfW4p2hwhW5ToZQHn5ldmU4Mz16A0lTjzG3D0xI2DBZFtg>
 <xme:6HuvZt8YdkVeFfSi8qa3KMzAovTJzLnnj1cn21SPNGviO-ijuVleUQQF5mjjU6QPl
 uMTI6XeGCorv0BCd38>
X-ME-Received: <xmr:6HuvZiRJlfTCzitcJxvhH94sPioJ80Mw4VZ_l7mhX3PLxeA14riVhE4tuu8Ub0mgo4EZLqZpJFDaTDnAHnSyTs2LLe_m9Uz0X019oqISOoRl8g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrkeeggdehlecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejue
 dvgfduudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtoheptd
X-ME-Proxy: <xmx:6HuvZnvoWS0x-QOYiGlAQgMZ3ABRBtPH68oEmPxnwMqVdCcFS-5p8g>
 <xmx:6HuvZrdCzk10puB9rwRdyw4Qf9BUIHCEUMKpIoonnaGNZutcSE23ag>
 <xmx:6HuvZj1uXSSZqIyDsxDzKJDumN2-Mhpyiih2WDctDl0P64UANybWjg>
 <xmx:6HuvZn9PrGVubAJvnQ-wPnnBIJTns3WtMd8jxdwUhKj08m0G6zNHLw>
 <xmx:6HuvZspPRC2VfbycT3iph9dV3I00iYPd-GKXWsCeEcgZUvpi0epMaCRb>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 4 Aug 2024 09:02:31 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 02/17] firewire: core: use guard macro to maintain the list of
 card
Date: Sun,  4 Aug 2024 22:02:09 +0900
Message-ID: <20240804130225.243496-3-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240804130225.243496-1-o-takashi@sakamocchi.jp>
References: <20240804130225.243496-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
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
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [103.168.172.159 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.159 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.159 listed in bl.score.senderscore.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [103.168.172.159 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1saask-0001DY-TU
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
