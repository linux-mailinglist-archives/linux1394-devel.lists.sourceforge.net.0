Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 031099477AA
	for <lists+linux1394-devel@lfdr.de>; Mon,  5 Aug 2024 10:54:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1satUO-0006AF-Rg;
	Mon, 05 Aug 2024 08:54:48 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1satUL-00069o-L2
 for linux1394-devel@lists.sourceforge.net;
 Mon, 05 Aug 2024 08:54:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oi4YF8S7QF5qtDuzwiUeYwReqaCDQcNumgOf6dEv5Us=; b=LkKT1BDlmSRjVvsQ1Vg2PxW2fX
 WtUu8vGz5gUi+eEb2nmp20pfDB1YgVdXYpASM5YyNQqkptCjkpYGtZrO8IPrX1eq2sS1fMEC0f/ke
 0EX+Hu1aNue1SwZAvLlg1fiTYgi/HQFwCPnqgbPTixi6VAgaKHOGUfOXedxFQz4e/yxQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oi4YF8S7QF5qtDuzwiUeYwReqaCDQcNumgOf6dEv5Us=; b=hkm9dpkjJrQIRI+Nhgrjc3O+Lu
 bEDIEpH6V/dyyN9jA5dfQLKQDIYvMzL1ZoVPXgu7lsDt56vqLDXFpzenxklo8fMg1USl3AfgT0uwv
 Nydb0jb3h0gwNh7DrVX35T7/XIob7cpgOLZTly0XstnkjIa+/8FYIxBCRQQywLmepH/Q=;
Received: from fhigh4-smtp.messagingengine.com ([103.168.172.155])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1satUK-0002uV-0Z for linux1394-devel@lists.sourceforge.net;
 Mon, 05 Aug 2024 08:54:44 +0000
Received: from compute8.internal (compute8.nyi.internal [10.202.2.227])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 7053D1146CF3;
 Mon,  5 Aug 2024 04:54:33 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute8.internal (MEProxy); Mon, 05 Aug 2024 04:54:33 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1722848073; x=
 1722934473; bh=oi4YF8S7QF5qtDuzwiUeYwReqaCDQcNumgOf6dEv5Us=; b=k
 l9oVQ4VWf1ZHKtR0U7bspOKPvUuIK3Ja/mN0JRyMimU+xEtseMtDqLXY8BbFd+tK
 Iuth4xSawSPSYlR4nXtcSme4jxpsCqsh/47Gc3aJS3jQQYyNyTD2btRnm9QpBbaI
 djfD7Phe1EPN7o/cXG4xvKW+M23RaE3bh//lCLu6t6v++ft/b0Vzl4xosbk9jCFI
 ehTrCh44rbKQVehwfBu1mY+ZM+Nh++GpSIq9FEHaheZ0PcJA8H0jG80YklIas63A
 Qy4EDw7X83he71SpUB7cYNz/IJvUG6URnKrgp0B32LlQ13KRDhtIqKkswnFdXpmN
 hwpL8+qbm2YbAqr3TUDvg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1722848073; x=
 1722934473; bh=oi4YF8S7QF5qtDuzwiUeYwReqaCDQcNumgOf6dEv5Us=; b=n
 OORla6/K40B/DPuFMbzSUFrvxuUZEX/hpNaRLwU2Kj1qBWGWxtpozzj28rvhWrIS
 L85NuDNt0nnOXb7hcTU4PRksfvPm504psELLvv0lGoYcGXnlNmaKvfMcrEMUIQyX
 Fkae2nYJa94XtzK3Q9c9EpoSbMcTgNJId9TG0BxuhKip7Wh+JHIvxS+IJV6WqYwC
 dPMeQGvDdbHTk6pI7Db+rzgkrhGykP3pEfhmU1TcjRVPnRBNDWtfgOAGspX/nqTc
 34FCYYeSYfSmgDEgp7VJTjaJJLqT3Am5hmEUfpFJ2x80/SpYXt1Z69g6QNoFZIXi
 vw++aPf+T9crzrcRXLvmw==
X-ME-Sender: <xms:SZOwZgSRh32jV5jmV3G65TWRYCVVBTg87q-Gp1TX1KqRwyyxMjj_rg>
 <xme:SZOwZtxyqK6GAfBQAPzISESwKMSQdshB8A_-3vOZBGxU6-1rG-npY8yUBQATV77Cx
 3i6GkG2vu1P-11XvDE>
X-ME-Received: <xmr:SZOwZt3nGlc2MESmh6F-TEtza5R6s2knDm5-NA4CwlJApCHoaYhShheCXAo2UMJIiQyfNH6OwomOzqMqawGY8pwS6hJdOwCN1wGe2G3exUc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrkeeigddtlecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejue
 dvgfduudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgv
 rhfuihiivgepvdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtoheptd
X-ME-Proxy: <xmx:SZOwZkCzZO1jqNz9SmIq4MJryD2_zEq4O5Z6ZPSpe_9RLTBgwsd24g>
 <xmx:SZOwZpiWL4g5soeK0gGUvk7fGemU_4w4m25i9YZDkhVbzYBLdJoDkg>
 <xmx:SZOwZgpLluL4opqURMd3mjpnr5SFXCUkgEI8hTN0frMuCi-XovSNtA>
 <xmx:SZOwZsiAPs1foZZpn357cQpvYQ8CfeDIHUAayryukGZx8gXlvUM7Eg>
 <xmx:SZOwZsvebQWGXATkMG3z0cYNg8IGUXg9tchGlmvW3xW2IeWVYmxRpEy_>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 5 Aug 2024 04:54:32 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH v2 16/17] firewire: ohci: use guard macro to maintain image of
 configuration ROM
Date: Mon,  5 Aug 2024 17:54:07 +0900
Message-ID: <20240805085408.251763-17-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240805085408.251763-1-o-takashi@sakamocchi.jp>
References: <20240805085408.251763-1-o-takashi@sakamocchi.jp>
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
 high trust [103.168.172.155 listed in list.dnswl.org]
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
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1satUK-0002uV-0Z
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
