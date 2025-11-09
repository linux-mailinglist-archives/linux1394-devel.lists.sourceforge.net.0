Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D7FBC4399F
	for <lists+linux1394-devel@lfdr.de>; Sun, 09 Nov 2025 07:55:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=h7c2rLxDBDMSHpeufsX7lt7BnfbuwykNjyNgADDN13c=; b=bCn2gHVz9jvSBW3POLqJ8dhmMQ
	ptGX7IHO7h7K+QtMY8v6lo4io0/VO38RGhJMcee74xS3ZU/K2sVW3Dsvqs6sRNHUAV4Br0rmdiuU6
	lbXEILqy6Tsjdlni7k32Ls6aduc0hMnE+6Beekb51Gb9GmdGaXSJMnYXkPxUBdsg2Pm0=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1vHzKx-0001Os-RR;
	Sun, 09 Nov 2025 06:55:44 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1vHzKv-0001Oj-9c
 for linux1394-devel@lists.sourceforge.net;
 Sun, 09 Nov 2025 06:55:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wXgZ81mSEOxKSCy6zHZn/GMDfI5kvtPS1B2/jL58BxM=; b=LXCgFRmCRRPnarZQob5WwCcP0C
 cazgN0fu5PloVqWt0pzx9jlqx1MdY5P8w9NSGM/KpqPhDUDl8eRloLKdqWNCv6ON0Q0sFOeblQube
 5YIfJn+/bD1SBVxdQSae2AduDSYKhPRKpo5inBx78UfV/DI3Ncatu6wad9PBm8fDtIdI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=wXgZ81mSEOxKSCy6zHZn/GMDfI5kvtPS1B2/jL58BxM=; b=V
 qo28SMH0bl2crXJWIO/KofV4IXJWnE+dRYGjuLV2gvhQZaHNju5Ves9v0RkfQgrSZWPEGhPkuL5cx
 Sb76KD7ydfQ7sgu6De72jDGC5b6mIecUQTYyUYfxRDqyHm6qZa6tuwST6NY1cL0jixeFJc47Oifyh
 uezpsqIQugM9s2XY=;
Received: from fout-a1-smtp.messagingengine.com ([103.168.172.144])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vHzKu-0004rg-DJ for linux1394-devel@lists.sourceforge.net;
 Sun, 09 Nov 2025 06:55:42 +0000
Received: from phl-compute-11.internal (phl-compute-11.internal [10.202.2.51])
 by mailfout.phl.internal (Postfix) with ESMTP id AD06AEC0129;
 Sun,  9 Nov 2025 01:55:29 -0500 (EST)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-11.internal (MEProxy); Sun, 09 Nov 2025 01:55:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm3; t=1762671329; x=1762757729; bh=wXgZ81mSEO
 xKSCy6zHZn/GMDfI5kvtPS1B2/jL58BxM=; b=wT0BTsmM1cbC39/yO5lEj3s3RD
 UOBph2e+2yNFcpKyuAzay8BUqgWFi+a+fCQ+7OjwtjvWV9yUDwQsuytR4P54gHyD
 N9IlZuyIyCIAfMgZPjaZvHw8cSGZfIngGDJCKEVrEv9eO2XEVsREM491OpfJM5eM
 RwLb50BwtRJTn4hXe5KuT6lwrVNQHwhpYLYzzYVSWQB0ljrvocKUn0/Pg+HAXWx1
 f66TsU/g6R8Rd2ldFvq1EitgTYVMEuF/HXLVTkbRllzQ8b+47JLrIKXU1GSg9/eT
 aC3SkcpdtG3AHj07Ff3qnpGzVc0GLH9ztjXD52aDSUdbaZ+N77RfR6hNdkPA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
 1762671329; x=1762757729; bh=wXgZ81mSEOxKSCy6zHZn/GMDfI5kvtPS1B2
 /jL58BxM=; b=gGdw6uuhuWal93NA7JKuNgIymXu58A0jOgy23wYAmJdftdPA67f
 B+Kgq/x04Csx1z+jfUO/GND31JyQSv6W0NZFr0aiLufphBHfBDy7Kgni81xyIy/B
 ttgYNGhbix2KzgcZjHpHbXMNfOQNFQPDEK6qCcqDcgj+z/0SRmp7RbvCF/Ug6FRR
 22+5uB57O43/VAii3IJATI0jgRlJzcPHbE3cwwcN8caDeutK4JpFuuvNsRhXaL43
 SNuONVaTSzBWMpB0qGL+ekYAgEA0yNwIbHt4oAOSP5rhBXaq0Ne7eGwH33Q/x61S
 ZfMc2TWMyUqCjFSEXSbp23j4H29kyT1ucgA==
X-ME-Sender: <xms:4ToQacVqctpirw03mmZsmlDBAsClKEbRWOnBsUIRqvzmHGSu-C8XPg>
 <xme:4ToQaei8Gjo986cCO6R5UMdFIJltIjU7Wgzc032KWoSGQ42kSlxFdSoH-GLWGYE26
 tvt8VWsPKLZlYr0Sa8DW_ETMoKdZ-G0G2VCadOr6aOE4AvTddCFUWo>
X-ME-Received: <xmr:4ToQaX9cwQLSn3MwULH_4CsZ1I-QlpbAT2k2taSK4rtrp_5z9XO-C7OdTE31zr5inDDxVh4rg1DBEJHaqrvmVi0WiZ4AWoGC_elENSd-wsTiJg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdduleegjeehucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffoggfgsedtkeertdertd
 dtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhi
 sehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeffvdeuleffveekud
 fhteejudffgefhtedtgfeutdfgvdfgueefudehveehveekkeenucevlhhushhtvghrufhi
 iigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrg
 hmohgttghhihdrjhhppdhnsggprhgtphhtthhopedvpdhmohguvgepshhmthhpohhuthdp
 rhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurhgtvg
 hfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdr
 khgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:4ToQaYBnGuoS-3uWWacbrECAqzOdS5IQQMXgmN_6omVCqfosdkdSWg>
 <xmx:4ToQaULEz6vqKQ9AV_FGYCq4t3OOSenl7WC-NC3mclqDYImHK7f1yQ>
 <xmx:4ToQabnTc6xwQ7tiV4au-orDB_Q9HMKahLJIQnFfQCKOr5J4SvyefA>
 <xmx:4ToQaSFkk045jD74AJP6CS0dZjowmNjXd5sG7YPoe4oJRa8JpZNHkw>
 <xmx:4ToQaUqXEMtajY8ocmymwxEWSdFflyz-f0047yPJcPHMebbT11S0X9Cr>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 9 Nov 2025 01:55:28 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH] firewire: core: clear sources of hardware interrupt at card
 removal
Date: Sun,  9 Nov 2025 15:55:25 +0900
Message-ID: <20251109065525.163464-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Due to the factors external to the system, hardware events
 may still be handled while a card instance is being removed. The sources
 of hardware IRQs should be cleared during card removal so that workq [...]
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1vHzKu-0004rg-DJ
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

Due to the factors external to the system, hardware events may still be
handled while a card instance is being removed. The sources of hardware
IRQs should be cleared during card removal so that workqueues can be safely
destroyed.

This commit adds a disable callback to the underlying driver operations.
After this callback returns, the underlying driver guarantees that it
will no longer handle hardware events.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-card.c |  3 +++
 drivers/firewire/core.h      |  3 +++
 drivers/firewire/ohci.c      | 44 +++++++++++++++++++++++++++++-------
 3 files changed, 42 insertions(+), 8 deletions(-)

diff --git a/drivers/firewire/core-card.c b/drivers/firewire/core-card.c
index 6979d6a88ae2..65bd9db996c0 100644
--- a/drivers/firewire/core-card.c
+++ b/drivers/firewire/core-card.c
@@ -784,9 +784,12 @@ void fw_core_remove_card(struct fw_card *card)
 	/* Switch off most of the card driver interface. */
 	dummy_driver.free_iso_context	= card->driver->free_iso_context;
 	dummy_driver.stop_iso		= card->driver->stop_iso;
+	dummy_driver.disable		= card->driver->disable;
 	card->driver = &dummy_driver;
+
 	drain_workqueue(card->isoc_wq);
 	drain_workqueue(card->async_wq);
+	card->driver->disable(card);
 
 	scoped_guard(spinlock_irqsave, &card->lock)
 		fw_destroy_nodes(card);
diff --git a/drivers/firewire/core.h b/drivers/firewire/core.h
index e67395ce26b5..903812b6bb3f 100644
--- a/drivers/firewire/core.h
+++ b/drivers/firewire/core.h
@@ -65,6 +65,9 @@ struct fw_card_driver {
 	int (*enable)(struct fw_card *card,
 		      const __be32 *config_rom, size_t length);
 
+	// After returning the call, any function is no longer triggered to handle hardware event.
+	void (*disable)(struct fw_card *card);
+
 	int (*read_phy_reg)(struct fw_card *card, int address);
 	int (*update_phy_reg)(struct fw_card *card, int address,
 			      int clear_bits, int set_bits);
diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 757dd9c64b1c..0625d11dbd74 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -2408,6 +2408,41 @@ static int ohci_enable(struct fw_card *card,
 	return 0;
 }
 
+static void ohci_disable(struct fw_card *card)
+{
+	struct pci_dev *pdev = to_pci_dev(card->device);
+	struct fw_ohci *ohci = pci_get_drvdata(pdev);
+	int i, irq = pci_irq_vector(pdev, 0);
+
+	// If the removal is happening from the suspend state, LPS won't be enabled and host
+	// registers (eg., IntMaskClear) won't be accessible.
+	if (!(reg_read(ohci, OHCI1394_HCControlSet) & OHCI1394_HCControl_LPS))
+		return;
+
+	reg_write(ohci, OHCI1394_IntMaskClear, ~0);
+	flush_writes(ohci);
+
+	if (irq >= 0)
+		synchronize_irq(irq);
+
+	flush_work(&ohci->ar_request_ctx.work);
+	flush_work(&ohci->ar_response_ctx.work);
+	flush_work(&ohci->at_request_ctx.work);
+	flush_work(&ohci->at_response_ctx.work);
+
+	for (i = 0; i < ohci->n_ir; ++i) {
+		if (!(ohci->ir_context_mask & BIT(i)))
+			flush_work(&ohci->ir_context_list[i].base.work);
+	}
+	for (i = 0; i < ohci->n_it; ++i) {
+		if (!(ohci->it_context_mask & BIT(i)))
+			flush_work(&ohci->it_context_list[i].base.work);
+	}
+
+	at_context_flush(&ohci->at_request_ctx);
+	at_context_flush(&ohci->at_response_ctx);
+}
+
 static int ohci_set_config_rom(struct fw_card *card,
 			       const __be32 *config_rom, size_t length)
 {
@@ -3442,6 +3477,7 @@ static int ohci_flush_iso_completions(struct fw_iso_context *base)
 
 static const struct fw_card_driver ohci_driver = {
 	.enable			= ohci_enable,
+	.disable		= ohci_disable,
 	.read_phy_reg		= ohci_read_phy_reg,
 	.update_phy_reg		= ohci_update_phy_reg,
 	.set_config_rom		= ohci_set_config_rom,
@@ -3681,14 +3717,6 @@ static void pci_remove(struct pci_dev *dev)
 	struct fw_ohci *ohci = pci_get_drvdata(dev);
 	int irq;
 
-	/*
-	 * If the removal is happening from the suspend state, LPS won't be
-	 * enabled and host registers (eg., IntMaskClear) won't be accessible.
-	 */
-	if (reg_read(ohci, OHCI1394_HCControlSet) & OHCI1394_HCControl_LPS) {
-		reg_write(ohci, OHCI1394_IntMaskClear, ~0);
-		flush_writes(ohci);
-	}
 	fw_core_remove_card(&ohci->card);
 
 	/*

base-commit: fa2dc27100768a8a994c377051fa17a47cc66c76
-- 
2.51.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
