Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F57B946EDD
	for <lists+linux1394-devel@lfdr.de>; Sun,  4 Aug 2024 15:03:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1saatC-0006iX-45;
	Sun, 04 Aug 2024 13:03:10 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1saat2-0006hn-Nt
 for linux1394-devel@lists.sourceforge.net;
 Sun, 04 Aug 2024 13:03:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oi4YF8S7QF5qtDuzwiUeYwReqaCDQcNumgOf6dEv5Us=; b=Gj6RnmbgTg7bLgCN4kQUEDe3O/
 F7U7TJZp3sFARtAKiCFq4YZXvaLP+F6ooShCQJVkuLaJ+dWe1rrfqDeMRG3Z8WQWWMdxS9EurO0Wf
 8/ZcWOGY4b9z2PlaZ/yQtIBUozMVBiqLZSIy+/H8NOvFDvuVUOAZfrG/6J6PzPrgc2r0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oi4YF8S7QF5qtDuzwiUeYwReqaCDQcNumgOf6dEv5Us=; b=hCIG5bteWIu0aHSKQlZ0eAmQOg
 rQQEra5booTWOGEkkmEc290gj1TVrasiG4h2M10wRvl/6b6EabkWxnKfFtMubmGCyziUjhxdyBKB6
 ZKZLmprR+ZWuq0KQemVnzEvgMZsgJ+CA3E00jYRQVf/AEvlR179v3GzMCtFLOrFr7o9E=;
Received: from fout3-smtp.messagingengine.com ([103.168.172.146])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1saasy-0001Ej-I4 for linux1394-devel@lists.sourceforge.net;
 Sun, 04 Aug 2024 13:02:57 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailfout.nyi.internal (Postfix) with ESMTP id 024DE138801E;
 Sun,  4 Aug 2024 09:02:51 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Sun, 04 Aug 2024 09:02:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1722776570; x=
 1722862970; bh=oi4YF8S7QF5qtDuzwiUeYwReqaCDQcNumgOf6dEv5Us=; b=s
 WfOarf8pTTKkWEaVKu9pBTPICmfeNPNQnHPFPAPxY59lVmI7drnRcn3xXWqROPOy
 Twjb2bZaA2ID1VT7mgY7KLivKERvAEfryrJEN6pC9LCbRrUog8j9Jz9HfoOaL8EB
 /iL0i3bBwfJhFrbpGARPzIWj46NOw+cEl3BFWOssGXEVjkZ+/Lm93cjgj56HF+go
 VdV3GTNAwxMz1eogwPpp5kyqpTy1+iquS+zzAPb7L630JLJVI6EqeK0fWeSRpjv/
 5S6s/lsxJwLOCv3ABTHtkjOugoKtfSpv9dzkqbNXUrNu4CfdHBr6vxOMHIun34ri
 9EZlzpRThpP0XjOhRg62A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1722776570; x=
 1722862970; bh=oi4YF8S7QF5qtDuzwiUeYwReqaCDQcNumgOf6dEv5Us=; b=u
 L3z1km6hJFFOgL1MWoUp39QyfdlPr9Z7RiOmeVd/b7bFrzJGD1AeGSfLWExezhg8
 iiS4BwtMKwooNKvVJ1o4aSpeBRwJNmYXtX+GObrkWchGMi7rQrgBc1zJFBUZYOIH
 PlfSqd3YI+Cn8gryxZ8LpYtkHfweTvHe2ow/FVOYPuldgQQJHGzj4/AGoRfMvU41
 hSIZDYsJEeevYAnyo9wxSN3Yk1oN6ypmlPtkznRVOtwFFIVmBX7DpU9lbYQKmm8f
 1ZGcynn2cUl5T0M1L8CzHXfV6NIU7xNfYWkq1C1SBKIYOJ4OPmYMHYMeeEEZwAZE
 WZcxo6qfKfYHUYmna2h/A==
X-ME-Sender: <xms:-nuvZg-KCvQFCBuk7_j_GENY7O4mM--XO2xnfIdbI6DEW-LE9f_aKQ>
 <xme:-nuvZoteUPDrbGmqdVwM80I98tKU916O1IfxV3vzOgyfAK5shflz1f93Dr9f93mby
 1Yd3gAoHtTOcng-szs>
X-ME-Received: <xmr:-nuvZmB7rTCu248H5D7Ji4Nd32A5jmZYMnHdCNLFtqKa3bUwbOpyRubZ_MaW1PSfBTllBz4x7VqZ_GLbAHueRTZW4hpv6nGeRoOdsLm7bVBEug>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrkeeggdehlecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejue
 dvgfduudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgv
 rhfuihiivgepfeenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtoheptd
X-ME-Proxy: <xmx:-nuvZgc0GdhwngxEI4p0FoUYwqAGKacUnWfTP3twCVuTqF56AAMMQg>
 <xmx:-nuvZlM1Mey8s51QfDDoaWMn1mcOHx-P_L4pannrzPrWGdF2CjpkgQ>
 <xmx:-nuvZqniRmpqnhWmP2c3bDZw08XdLO6-CiAFXmZ3PGSU0ZusQccYtA>
 <xmx:-nuvZnvpO-Rv-m313FCClLHXGpz8r_hqtnq86HItNPGUteYf3GCCig>
 <xmx:-nuvZuZ5QAGXW2C_k3UwUxkds0SEoWvEp7VSVNAKn4TCXFS0zuJehKcH>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 4 Aug 2024 09:02:49 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 16/17] firewire: ohci: use guard macro to maintain image of
 configuration ROM
Date: Sun,  4 Aug 2024 22:02:23 +0900
Message-ID: <20240804130225.243496-17-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240804130225.243496-1-o-takashi@sakamocchi.jp>
References: <20240804130225.243496-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The 1394 OHCI driver uses spinlock for the process to update
 local configuration ROM. This commit uses guard macro to maintain the
 spinlock.
 Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp> ---
 drivers/firewire/ohci.c
 | 116 +++++++++++++++++ 1 file changed, 49 insertions(+), 67 deletions(-)
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [103.168.172.146 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.146 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.146 listed in sa-accredit.habeas.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1saasy-0001Ej-I4
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

The 1394 OHCI driver uses spinlock for the process to update local
configuration ROM.

This commit uses guard macro to maintain the spinlock.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 116 +++++++++++++++++-----------------------
 1 file changed, 49 insertions(+), 67 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 5cb7c7603c2c..368420e4b414 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -2139,53 +2139,42 @@ static void bus_reset_work(struct work_struct *work)
 	at_context_flush(&ohci->at_request_ctx);
 	at_context_flush(&ohci->at_response_ctx);
 
-	spin_lock_irq(&ohci->lock);
-
-	ohci->generation = generation;
-	reg_write(ohci, OHCI1394_IntEventClear, OHCI1394_busReset);
-	reg_write(ohci, OHCI1394_IntMaskSet, OHCI1394_busReset);
-
-	if (ohci->quirks & QUIRK_RESET_PACKET)
-		ohci->request_generation = generation;
-
-	/*
-	 * This next bit is unrelated to the AT context stuff but we
-	 * have to do it under the spinlock also.  If a new config rom
-	 * was set up before this reset, the old one is now no longer
-	 * in use and we can free it. Update the config rom pointers
-	 * to point to the current config rom and clear the
-	 * next_config_rom pointer so a new update can take place.
-	 */
-
-	if (ohci->next_config_rom != NULL) {
-		if (ohci->next_config_rom != ohci->config_rom) {
-			free_rom      = ohci->config_rom;
-			free_rom_bus  = ohci->config_rom_bus;
+	scoped_guard(spinlock_irq, &ohci->lock) {
+		ohci->generation = generation;
+		reg_write(ohci, OHCI1394_IntEventClear, OHCI1394_busReset);
+		reg_write(ohci, OHCI1394_IntMaskSet, OHCI1394_busReset);
+
+		if (ohci->quirks & QUIRK_RESET_PACKET)
+			ohci->request_generation = generation;
+
+		// This next bit is unrelated to the AT context stuff but we have to do it under the
+		// spinlock also. If a new config rom was set up before this reset, the old one is
+		// now no longer in use and we can free it. Update the config rom pointers to point
+		// to the current config rom and clear the next_config_rom pointer so a new update
+		// can take place.
+		if (ohci->next_config_rom != NULL) {
+			if (ohci->next_config_rom != ohci->config_rom) {
+				free_rom      = ohci->config_rom;
+				free_rom_bus  = ohci->config_rom_bus;
+			}
+			ohci->config_rom      = ohci->next_config_rom;
+			ohci->config_rom_bus  = ohci->next_config_rom_bus;
+			ohci->next_config_rom = NULL;
+
+			// Restore config_rom image and manually update config_rom registers.
+			// Writing the header quadlet will indicate that the config rom is ready,
+			// so we do that last.
+			reg_write(ohci, OHCI1394_BusOptions, be32_to_cpu(ohci->config_rom[2]));
+			ohci->config_rom[0] = ohci->next_header;
+			reg_write(ohci, OHCI1394_ConfigROMhdr, be32_to_cpu(ohci->next_header));
 		}
-		ohci->config_rom      = ohci->next_config_rom;
-		ohci->config_rom_bus  = ohci->next_config_rom_bus;
-		ohci->next_config_rom = NULL;
 
-		/*
-		 * Restore config_rom image and manually update
-		 * config_rom registers.  Writing the header quadlet
-		 * will indicate that the config rom is ready, so we
-		 * do that last.
-		 */
-		reg_write(ohci, OHCI1394_BusOptions,
-			  be32_to_cpu(ohci->config_rom[2]));
-		ohci->config_rom[0] = ohci->next_header;
-		reg_write(ohci, OHCI1394_ConfigROMhdr,
-			  be32_to_cpu(ohci->next_header));
-	}
-
-	if (param_remote_dma) {
-		reg_write(ohci, OHCI1394_PhyReqFilterHiSet, ~0);
-		reg_write(ohci, OHCI1394_PhyReqFilterLoSet, ~0);
+		if (param_remote_dma) {
+			reg_write(ohci, OHCI1394_PhyReqFilterHiSet, ~0);
+			reg_write(ohci, OHCI1394_PhyReqFilterLoSet, ~0);
+		}
 	}
 
-	spin_unlock_irq(&ohci->lock);
-
 	if (free_rom)
 		dmam_free_coherent(ohci->card.device, CONFIG_ROM_SIZE, free_rom, free_rom_bus);
 
@@ -2626,33 +2615,26 @@ static int ohci_set_config_rom(struct fw_card *card,
 	if (next_config_rom == NULL)
 		return -ENOMEM;
 
-	spin_lock_irq(&ohci->lock);
-
-	/*
-	 * If there is not an already pending config_rom update,
-	 * push our new allocation into the ohci->next_config_rom
-	 * and then mark the local variable as null so that we
-	 * won't deallocate the new buffer.
-	 *
-	 * OTOH, if there is a pending config_rom update, just
-	 * use that buffer with the new config_rom data, and
-	 * let this routine free the unused DMA allocation.
-	 */
-
-	if (ohci->next_config_rom == NULL) {
-		ohci->next_config_rom = next_config_rom;
-		ohci->next_config_rom_bus = next_config_rom_bus;
-		next_config_rom = NULL;
-	}
+	scoped_guard(spinlock_irq, &ohci->lock) {
+		// If there is not an already pending config_rom update, push our new allocation
+		// into the ohci->next_config_rom and then mark the local variable as null so that
+		// we won't deallocate the new buffer.
+		//
+		// OTOH, if there is a pending config_rom update, just use that buffer with the new
+		// config_rom data, and let this routine free the unused DMA allocation.
+		if (ohci->next_config_rom == NULL) {
+			ohci->next_config_rom = next_config_rom;
+			ohci->next_config_rom_bus = next_config_rom_bus;
+			next_config_rom = NULL;
+		}
 
-	copy_config_rom(ohci->next_config_rom, config_rom, length);
+		copy_config_rom(ohci->next_config_rom, config_rom, length);
 
-	ohci->next_header = config_rom[0];
-	ohci->next_config_rom[0] = 0;
+		ohci->next_header = config_rom[0];
+		ohci->next_config_rom[0] = 0;
 
-	reg_write(ohci, OHCI1394_ConfigROMmap, ohci->next_config_rom_bus);
-
-	spin_unlock_irq(&ohci->lock);
+		reg_write(ohci, OHCI1394_ConfigROMmap, ohci->next_config_rom_bus);
+	}
 
 	/* If we didn't use the DMA allocation, delete it. */
 	if (next_config_rom != NULL) {
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
